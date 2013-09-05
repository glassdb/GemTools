Session Tests
testPerformNB

	| userGlobals |
	userGlobals := session jadeServer objectNamed: #UserGlobals.
	session receiverNB: userGlobals perform: 'at:put:' withArguments: {#James. #performNB.}.
	self assert: (session executeString:'UserGlobals at: #James') == #performNB