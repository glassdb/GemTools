updating
forwardedUpdate: aSymbol

	"Transcript cr; show: 'fixed button panel forwardedUpdate: ', aSymbol printString."
	aSymbol == #commands ifTrue: [commands := nil].
	self changed: aSymbol.
	^nil
