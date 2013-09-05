*gemTools-client
performFromServer: aSelector with: argsOop  using: aSession

	| sz args |
	sz := aSession receiver: argsOop perform: 'size'.
	args := Array new: sz.
	1 to: sz do: [:i | 
		args at: i put: (aSession receiver: argsOop perform: 'at:' with: i)].
	^aSelector numArgs == 0
		ifTrue: [ self perform: aSelector ]
		ifFalse: [ self perform: aSelector withArguments: args ]
