GCI Tests
testGciArguments

	| clientForwarder localString |
	clientForwarderValue := #key -> 0.
	self assert: clientForwarderValue value = 0.
	clientForwarder := session registerClientObjectForwarder: self.
	"make sure the symbol exists on the server"
	self assert: (session executeString: '#clientForwarderValue:') == #clientForwarderValue:.

	session receiverNB: clientForwarder perform: 'clientForwarderValue:' withArguments: {'returnString'}.
	self assert: clientForwarderValue value = 'returnString'.
	session receiverNB: clientForwarder perform: 'clientForwarderValue:' withArguments: {1000}.
	self assert: clientForwarderValue value = 1000.
	session receiverNB: clientForwarder perform: 'clientForwarderValue:' withArguments: {true}.
	self assert: clientForwarderValue value = true.
	session receiverNB: clientForwarder perform: 'clientForwarderValue:' withArguments: {false}.
	self assert: clientForwarderValue value = false.
	session receiverNB: clientForwarder perform: 'clientForwarderValue:' withArguments: {#'TEST_SYMBOL'}.
	self assert: clientForwarderValue value == #'TEST_SYMBOL'.
	session receiverNB: clientForwarder perform: 'clientForwarderValue:' withArguments: {'returnString'}.
	self assert: clientForwarderValue value = 'returnString'.
	localString := String withAll: (OrderedCollection new
		add: $a;
		add: $b;
		add: 16r2013 asCharacter;	"n-dash"
		add: 16r20AC asCharacter;	"euro"
		add: 16r0161 asCharacter;	"s-caron"
		add: 16r010D asCharacter;	"c-caron"
		yourself).
	session receiverNB: clientForwarder perform: 'clientForwarderValue:' withArguments: {localString}.
	self assert: clientForwarderValue value = localString.
	session receiverNB: clientForwarder perform: 'clientForwarderValue:' withArguments: {1.1}.
	self assert: clientForwarderValue value = 1.1.
