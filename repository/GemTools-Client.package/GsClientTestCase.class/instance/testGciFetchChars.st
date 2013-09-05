GCI Tests
testGciFetchChars

	| oopType string |
	oopType := library executeString: '123 printString'.
	string := library fetchChars: oopType.
	self assert: string = '123'.
