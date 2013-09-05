private
addCommand: cmdClass selector: selector label: aLabel to: menu

	| cmd |
	cmd := cmdClass on: target for: requestor.
	menu
		add: (aLabel isNil ifTrue: [cmd label asString] ifFalse: [aLabel])
		target: cmd
		selector: selector