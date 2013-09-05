Session Tests
testExecuteString

	self
		assert: (session executeString: '123 printString') = '123';
		assert: (session executeString: 'ByteArray with: 1 with: 2') = #(1 2) asByteArray;
		assert: (session executeString: '123') = 123;
		assert: (session executeString: '12 + 34') = 46;
		assert: (session executeString: '$a') = $a;
		assert: (session executeString: 'true') = true;
		assert: (session executeString: 'false') = false;
		assert: (session executeString: 'nil') = nil;
		assert: (session executeString: '#abc') = #abc;
		assert: ((session executeString: 'Object new') isKindOf: OopType);
		yourself.
