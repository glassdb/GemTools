as yet unclassified
parseBracketArray
	"similar to parseStatementList"
	
	[currentTokenFirst ~~ $] ifTrue: [self parseStatement].
	currentTokenFirst == $,] 
		whileTrue: [self scanPast: #binary]