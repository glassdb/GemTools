as yet unclassified
isName
	^(currentTokenFirst isLetter or: [currentTokenFirst == $_])
		 and: [currentToken last isAlphaNumeric]