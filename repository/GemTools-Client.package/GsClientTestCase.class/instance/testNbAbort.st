GCI Tests
testNbAbort

	self
		assert: library apiGciAbort == library;
		assert: (session executeString: 'UserGlobals at: #James put: 5') = 5;
		assert: library apiGciCommit;
		assert: (session executeString: 'UserGlobals at: #James put: 6') = 6;
		assert: (session executeString: 'UserGlobals at: #James') = 6;
		deny: library apiGciCallInProgress;
		assert: library apiGciNbAbort == library;
		assert: library apiGciCallInProgress;
		assert: session getNbResultAsVoid == session;
		assert: (session executeString: 'UserGlobals at: #James') = 5;
		yourself.
