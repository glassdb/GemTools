Accessors
name

	name isNil ifTrue: [
		name := [self gsPerform: 'name'] on: Error do: [:ex | self printString ].
	].
	^name.
	