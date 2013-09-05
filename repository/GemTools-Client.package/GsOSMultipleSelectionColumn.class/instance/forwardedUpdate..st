updating
forwardedUpdate: aSymbol

	"Transcript cr; show: 'multiple select column forwardedUpdate: ', aSymbol printString."
	aSymbol == #multipleSelection ifTrue: [multipleSelection := nil].
	^super forwardedUpdate: aSymbol