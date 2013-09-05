GCI Tests
testGciFetchBytes

	| oopType bytes |
	oopType := library executeString: '123 printString'.
	bytes := library fetchBytes: oopType.
	self assert: bytes = #(49 50 51) asByteArray.
