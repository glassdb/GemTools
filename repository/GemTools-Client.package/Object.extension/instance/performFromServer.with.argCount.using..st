*gemTools-client
performFromServer: aSelector with: argsOop argCount: argCount using: aSession

	| args |
	args := Array new: argCount.
	1 to: argCount do: [:i | 
		args at: i put: (aSession receiver: argsOop perform: 'at:' with: i)].
	^aSelector numArgs == 0
		ifTrue: [ self perform: aSelector ]
		ifFalse: [ self perform: aSelector withArguments: args ]
