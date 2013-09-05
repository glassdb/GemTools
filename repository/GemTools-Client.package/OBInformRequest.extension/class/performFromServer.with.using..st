*gemTools-client
performFromServer: aSelector with: argsOop  using: aSession
	| informOop |
	aSelector == #signalInformRequestUsing: 
		ifFalse: [^self halt: 'Unknown message forwarded from server: ', aSelector printString].
	informOop := aSession receiver: argsOop perform: 'at:' with: 1.
	self 
		message: (aSession receiver: informOop perform: 'message').
	"no interesting return value"
	^true