GCI Tests
testOopValues

	self
		assert: (library executeString: 'Character withValue: 0') = library oopAsciiNul;
		assert: (library executeString: 'ByteArray') = library oopClassByteArray;
		assert: (library executeString: 'String') = library oopClassString;
		assert: (library executeString: 'Symbol') = library oopClassSymbol;
		assert: (library executeString: 'System') = library oopClassSystem;
		assert: (library executeString: 'false') = library oopFalse;
		assert: (library executeString: 'GemStoneError') = library oopGemStoneError;
		assert: (library executeString: 'SmallInteger maximumValue') = library oopMaxSmallInteger;
		assert: (library executeString: 'SmallInteger minimumValue') = library oopMinSmallInteger;
		assert: (library executeString: '-1') = library oopMinusOne;
		assert: (library executeString: 'nil') = library oopNil;
		assert: (library executeString: '1') = library oopOne;
		assert: (library executeString: 'true') = library oopTrue;
		assert: (library executeString: '2') = library oopTwo;
		assert: (library executeString: '0') = library oopZero;
		yourself.
