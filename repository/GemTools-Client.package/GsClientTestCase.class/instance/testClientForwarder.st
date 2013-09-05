Session Tests
testClientForwarder

	| clientForwarder |
	clientForwarderValue := #key -> 0.
	self assert: clientForwarderValue value = 0.
	clientForwarder := session registerClientObjectForwarder: self.
	"make sure the symbol exists on the server"
	self assert: (session executeString: '#clientForwarderValue:') == #clientForwarderValue:.
	"send the message to the clientForwder on the server"
	session receiverNB: clientForwarder perform: 'clientForwarderValue:' withArguments: {1}.
	self assert: clientForwarderValue value = 1.