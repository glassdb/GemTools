execution
execute
	| aCommand commandList |
	commandList := self class organization listAtCategoryNamed: #expressions.
	aCommand := UIManager default chooseFrom: (commandList collect: [:s | self toLabel: s]) values: commandList lines: #() title: 'Select expression'.
	aCommand isNil
		ifFalse: [self perform: aCommand ]