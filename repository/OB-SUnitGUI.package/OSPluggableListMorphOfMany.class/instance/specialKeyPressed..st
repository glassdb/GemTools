event handling
specialKeyPressed: asciiValue
	"A special key with the given ascii-value was pressed; dispatch it"

	| oldSelection result |
	oldSelection := self getCurrentSelectionIndex.
	result := super specialKeyPressed: asciiValue.	
	self listSelectionAt: oldSelection put: false.
	^result