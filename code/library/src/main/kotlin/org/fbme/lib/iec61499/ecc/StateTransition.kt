package org.fbme.lib.iec61499.ecc

import org.fbme.lib.common.ContainedElement
import org.fbme.lib.common.Element
import org.fbme.lib.common.Reference

interface StateTransition : ContainedElement {
    override val container: Element?
    val sourceReference: Reference<StateDeclaration>
    val targetReference: Reference<StateDeclaration>
    val condition: ECTransitionCondition
    var centerX: Int
    var centerY: Int
}