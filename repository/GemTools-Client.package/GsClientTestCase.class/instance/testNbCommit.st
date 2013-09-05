GCI Tests
testNbCommit

	self
		assert: library apiGciAbort == library;
		deny: library apiGciCallInProgress;
		assert: library apiGciNbCommit == library;
		assert: library apiGciCallInProgress;
		assert: session getNbResultAsBoolean;
		yourself.
