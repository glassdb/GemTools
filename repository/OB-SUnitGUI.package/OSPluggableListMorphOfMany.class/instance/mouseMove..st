event handling
mouseMove: evt
	| oldIndex oldVal row |
	(self dropEnabled and: [evt hand hasSubmorphs]) 
		ifFalse:[^super mouseMove: evt].
	potentialDropRow ifNotNil:[
		potentialDropRow = (self rowAtLocation: evt position)
			ifTrue:[^self]. 
	].
	self mouseLeaveDragging: evt.
	(self containsPoint: evt position) 
		ifTrue:[self mouseEnterDragging: evt].
		
	"Set meaning for subsequent dragging of selection"
	oldIndex := self getCurrentSelectionIndex.
	oldIndex ~= 0 ifTrue: [oldVal := self listSelectionAt: oldIndex].

     row := self rowAtLocation: evt position.
	"Set or clear new primary selection (listIndex)"
	(dragOnOrOff ifNil: [dragOnOrOff := (self listSelectionAt: row) not. ])
		ifTrue: [self changeModelSelection: row]
		ifFalse: [self changeModelSelection: 0].

	"Need to restore the old one, due to how model works, and set new one."
	oldIndex ~= 0 ifTrue: [self listSelectionAt: oldIndex put: oldVal].
	self listSelectionAt: row put: dragOnOrOff.
	row changed