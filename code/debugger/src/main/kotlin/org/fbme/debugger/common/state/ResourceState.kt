package org.fbme.debugger.common.state

import org.fbme.debugger.common.getChildrenStates
import org.fbme.lib.iec61499.declarations.ResourceDeclaration

class ResourceState : State {
    val children: Map<String, FBState>

    constructor(typeDeclaration: ResourceDeclaration) {
        children = typeDeclaration.getChildrenStates()
    }

    constructor(resourceState: ResourceState, init: ResourceState.() -> Unit = {}) {
        children = resourceState.children.mapValues { it.value.copy() }
        init()
    }

    override fun copy() = ResourceState(this)
}