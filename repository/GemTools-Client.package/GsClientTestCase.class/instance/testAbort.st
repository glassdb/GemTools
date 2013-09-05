GCI Tests
testAbort

	self
		assert: library apiGciAbort == library;
		assert: (session executeString: 'UserGlobals at: #James put: 5') = 5;
		assert: library apiGciCommit;
		assert: (session executeString: 'UserGlobals at: #James put: 6') = 6;
		assert: (session executeString: 'UserGlobals at: #James') = 6;
		assert: library apiGciAbort == library;
		assert: (session executeString: 'UserGlobals at: #James') = 5;
		yourself.
	