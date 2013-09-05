Session Tests
testPerformBlocking

	| userGlobals |
	userGlobals := session jadeServer objectNamed: #UserGlobals.
	session receiverOld: userGlobals perform: 'at:put:' withArguments: {#James. #performBlocking.}.
	self assert: (session executeString:'UserGlobals at: #James') == #performBlocking