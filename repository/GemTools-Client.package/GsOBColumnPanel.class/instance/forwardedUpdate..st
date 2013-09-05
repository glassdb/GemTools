updating
forwardedUpdate: aSymbol

	"Transcript cr; show: 'column panel forwardedUpdate: ', aSymbol printString."
	aSymbol == #columns ifTrue: [columns := nil].
	self changed: aSymbol.
	^nil