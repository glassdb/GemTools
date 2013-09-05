GCI Tests
testGciFetchClass

	| class |
	class := library apiGciFetchClass: (library executeString: 'String new').
	self assert: class = library oopClassString.
	class := library apiGciFetchClass: (library executeString: 'ByteArray new').
	self assert: class = library oopClassByteArray.
	class := library executeString: 'System'.
	self assert: class = library oopClassSystem.
