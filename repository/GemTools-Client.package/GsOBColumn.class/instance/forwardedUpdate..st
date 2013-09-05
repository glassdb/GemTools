updating
forwardedUpdate: aSymbol

	"Transcript cr; show: 'column forwardedUpdate: ', aSymbol printString."
	"aSymbol == #switch ifTrue: [switch := nil]."
	aSymbol == #list ifTrue: [icons := listSize := list := nil].
	aSymbol == #selection ifTrue: [selection := nil].
	self changed: aSymbol.
	^nil