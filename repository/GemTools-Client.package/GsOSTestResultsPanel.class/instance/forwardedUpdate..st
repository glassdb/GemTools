updating
forwardedUpdate: aSymbol

	"Transcript cr; show: 'definition panel forwardedUpdate: ', aSymbol printString."
	aSymbol == #text ifTrue: [ text := nil].
	self changed: aSymbol.
	aSymbol == #text 
		ifTrue: [ 
			"force redisplay of text pane"
			GciSession gsCursor showWhile: [ self currentWorld displayWorld ]].
	^nil
