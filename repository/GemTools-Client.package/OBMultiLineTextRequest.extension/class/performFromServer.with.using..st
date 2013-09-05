*gemTools-client
performFromServer: aSelector with: argsOop  using: aSession
	| textOop |
	aSelector == #signalMultiLineTextRequestUsing: 
		ifFalse: [^self halt: 'Unknown message forwarded from server: ', aSelector printString].
	textOop := aSession receiver: argsOop perform: 'at:' with: 1.
	^self  
		prompt: (aSession receiver: textOop perform: 'prompt')
		template: (aSession receiver: textOop perform: 'template')
