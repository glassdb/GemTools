Server Tests
testServerCreation

	| result |
	result := session executeString: '(System _sessionStateAt: 3) class name'.
	self assert: result = #'JadeServer'.
	result := session executeString: '(System _sessionStateAt: 3) returnString'.
	self assert: result = 'I return a string'.
	result := session executeString: '(System _sessionStateAt: 3) returnInteger'.
	self assert: result = 42.
