updating
forwardedUpdate: aSymbol

	"Transcript cr; show: 'switch forwardedUpdate: ', aSymbol printString."
	aSymbol == #list ifTrue: [list := nil].
	aSymbol == #selection ifTrue: [selection := nil].
	isActive := nil.
	self changed: aSymbol.
	^nil
