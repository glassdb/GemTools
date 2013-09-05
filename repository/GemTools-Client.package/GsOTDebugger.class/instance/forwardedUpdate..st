updating
forwardedUpdate: aSymbol

	"don't reset the label in the debugger'"
	"aSymbol == #relabel ifTrue: [labelString := defaultLabel := nil]."
	self changed: aSymbol.
	^nil