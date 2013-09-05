*gemTools-client
performFromServer: aSelector with: argsOop  using: aSession
	| choiceOop choices |
	aSelector == #signalChoiceRequestUsing: 
		ifFalse: [^self halt: 'Unknown message forwarded from server: ', aSelector printString].
	choiceOop := aSession receiver: argsOop perform: 'at:' with: 1.
	choices := self extractChoicesFor: choiceOop session: aSession.
	^self 
		prompt: (aSession receiver: choiceOop perform: 'prompt') 
		labels: (choices at: 1) 
		values: (choices at: 2) 
		lines: (choices at: 3)