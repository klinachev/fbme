package org.fbme.debugger

import androidx.compose.runtime.mutableStateListOf
import androidx.compose.runtime.mutableStateMapOf
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.ui.focus.FocusRequester
import androidx.compose.ui.text.AnnotatedString
import androidx.compose.ui.text.input.TextFieldValue
import jetbrains.mps.project.Project
import org.fbme.ide.platform.debugger.Watchable
import javax.swing.JComponent

class Debugger private constructor(private val project: Project) {
    private val watchables = mutableStateMapOf<Watchable, AnnotatedString>()
    private val searchWatchables = mutableStateOf(TextFieldValue())
    private val states = mutableStateListOf<StateData>()
    private val searchStates = mutableStateOf(TextFieldValue())
    private val inspections = mutableMapOf<Watchable, InspectionProvider>()

    data class StateData(
        val watchable: Watchable,
        val oldValue: String?,
        val newValue: String,
        val watchables: Map<Watchable, AnnotatedString>
    ) {
        internal val focusRequester = FocusRequester()
        override fun toString(): String {
            return watchable.name + ": " + (oldValue ?: "???") + " -> " + newValue
        }
    }

    fun watch(watchable: Watchable, inspectionProvider: InspectionProvider) {
        if (!watchables.contains(watchable)) {
            watchables[watchable] = AnnotatedString("???")
            inspections[watchable] = inspectionProvider
        }
    }

    fun stopWatch(watchable: Watchable) {
        if (watchables.contains(watchable)) {
            watchables.remove(watchable)
        }
    }

    fun isWatched(watchable: Watchable): Boolean {
        return watchables.contains(watchable)
    }

    @Synchronized
    fun setValueForWatchable(watchable: Watchable, newValue: String) {
        val oldValue = watchables[watchable]
        if (oldValue?.text != newValue) {
            watchables[watchable] = AnnotatedString(newValue)
            states.add(
                index = 0,
                StateData(
                    watchable = watchable,
                    oldValue = oldValue?.text,
                    newValue = newValue,
                    watchables = watchables.toMap()
                )
            )
        }
    }

    fun getWatched(): Set<Watchable> {
        return watchables.keys
    }

    fun getComponent(): JComponent {
        return debuggerPanel(states, searchStates, inspections, watchables, searchWatchables)
    }

    companion object {
        private val instances: MutableMap<Project, Debugger> = mutableMapOf()

        @Synchronized
        fun getInstance(project: Project): Debugger? = instances[project]

        @Synchronized
        fun register(project: Project) {
            check(!instances.containsKey(project))
            val debugger = Debugger(project)
            instances.putIfAbsent(project, debugger)
        }

        @Synchronized
        fun unregister(project: Project) {
            check(instances.containsKey(project))
            instances.remove(project)
        }
    }
}