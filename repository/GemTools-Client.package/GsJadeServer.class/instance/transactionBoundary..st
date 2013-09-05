session support
transactionBoundary: aSymbol
	
	^self gsPerform: #transactionBoundary: with: aSymbol