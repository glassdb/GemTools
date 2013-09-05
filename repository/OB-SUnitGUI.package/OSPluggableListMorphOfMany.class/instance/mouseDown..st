event handling
mouseDown: evt
	| selectors row oldIndex oldVal |
	evt yellowButtonPressed  "First check for option (menu) click"
		ifTrue: [^ self yellowButtonActivity: evt shiftPressed].
	row := self rowAtLocation: evt position.
	row = 0  ifTrue: [^super mouseDown: evt].
	"self dragEnabled ifTrue: [aMorph highlightForMouseDown]."
	
	model okToChange ifFalse: [^ self].  "No change if model is locked"

	"Set meaning for subsequent dragging of selection"
	dragOnOrOff := (self listSelectionAt: row) not.
	oldIndex := self getCurrentSelectionIndex.
	oldIndex ~= 0 ifTrue: [oldVal := self listSelectionAt: oldIndex].

	"Set or clear new primary selection (listIndex)"
	dragOnOrOff
		ifTrue: [self changeModelSelection: row]
		ifFalse: [self changeModelSelection: 0].

	"Need to restore the old one, due to how model works, and set new one."
	oldIndex ~= 0 ifTrue: [self listSelectionAt: oldIndex put: oldVal].
	self listSelectionAt: row put: dragOnOrOff.	
	
	selectors := Array 
		with: nil"#click:"
		with: (doubleClickSelector ifNotNil:[#doubleClick:])
		with: nil
		with: (self dragEnabled ifTrue:[#startDrag:] ifFalse:[nil]).
	evt hand waitForClicksOrDrag: self event: evt selectors: selectors threshold: 10