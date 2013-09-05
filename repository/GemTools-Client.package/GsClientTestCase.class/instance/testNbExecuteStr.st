GCI Tests
testNbExecuteStr

	| string1 string2 string3 |
	string1 := 'UserGlobals at: #James put: 0'.
	string2 := 'UserGlobals at: #James put: 1'.
	string3 := 'UserGlobals at: #James'.
	self
		assert: library apiGciAbort == library;
		assert: (library apiGciExecuteStr: string1 a: library oopNil) = library oopZero;
		assert: (library apiGciExecuteStr: string3 a: library oopNil) = library oopZero;
		deny: library apiGciCallInProgress;
		assert: (library apiGciNbExecuteStr: string2 a: library oopNil) == library;
		assert: library apiGciCallInProgress;
		assert: session getNbResultAsOop = library oopOne;
		assert: (library apiGciExecuteStr: string3 a: library oopNil) = library oopOne;
		yourself.
