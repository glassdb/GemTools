updating
forwardedUpdate: aSymbol

	"Transcript cr; show: 'definition panel forwardedUpdate: ', aSymbol printString."
	aSymbol == #selection ifTrue: [selection := nil].
	aSymbol == #text ifTrue: [ selection := text := nil].
	node := nodeType := classOrMetaClass := nil.
	self changed: aSymbol.
	^nil
