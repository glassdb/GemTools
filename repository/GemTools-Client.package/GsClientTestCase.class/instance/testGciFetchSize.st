GCI Tests
testGciFetchSize

	| oopType size |
	oopType := library executeString: '1 printString'.
	size := library apiGciFetchSize: oopType.
	self assert: size = 1.

	oopType := library executeString: '123 printString'.
	size := library apiGciFetchSize: oopType.
	self assert: size = 3.
