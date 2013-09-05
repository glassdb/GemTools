as yet unclassified
parseSymbolIdentifier
	| c start end |
	c := self currentChar.
	self failUnless: (c isLetter or: [c == $:]).
	start := sourcePosition.	
	[c := self nextChar.
	(c isAlphaNumeric or: [c == $:]) or: [c == $_] ] 
		whileTrue: [].
	end := sourcePosition - 1.
	c := source copyFrom: start - 1 to: end.
	self scanPast: #symbol start: start - 1 end: end.
	^c