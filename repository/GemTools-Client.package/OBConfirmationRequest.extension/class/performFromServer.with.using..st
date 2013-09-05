*gemTools-client
performFromServer: aSelector with: argsOop  using: aSession
	| confirmationOop |
	aSelector == #signalConfirmationRequestUsing: 
		ifFalse: [^self halt: 'Unknown message forwarded from server: ', aSelector printString].
	confirmationOop := aSession receiver: argsOop perform: 'at:' with: 1.
	^self 
		prompt: (aSession receiver: confirmationOop perform: 'prompt') 
		confirm: (aSession receiver: confirmationOop perform: 'okChoice') 
		cancel: (aSession receiver: confirmationOop perform: 'cancelChoice')