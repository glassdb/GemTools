updating
forwardedUpdate: aSymbol

	"Transcript cr; show: 'browser forwardedUpdate: ', aSymbol printString."
	aSymbol == #relabel ifTrue: [labelString := defaultLabel := nil].
	aSymbol == #noteChanges 
		ifTrue: [
			hasChanges := true.
			^nil].
	aSymbol == #clearChanges 
		ifTrue: [
			hasChanges := false.
			^nil].
	self changed: aSymbol.
	^nil