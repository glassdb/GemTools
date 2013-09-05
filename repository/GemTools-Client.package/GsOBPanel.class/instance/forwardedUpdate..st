updating
forwardedUpdate: aSymbol

	"Transcript cr; show: 'panel forwardedUpdate: ', aSymbol printString."
	self changed: aSymbol.
	^nil