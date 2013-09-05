callbacks
commands

	| info |
	commands ~~ nil ifTrue: [ ^commands].
	info := session jadeServer commandPanelInfoFor: oopType.
	info := info gsSubStrings2: Character tab.
	commands := OrderedCollection new.
	1 to: info size do: [:i | | oop cmd |
		oop := session library oopTypeFor: (info at: i).
		cmd := GsOBCommand session: session oopType: oop.
		cmd owner: self.
		commands add: cmd ].
	^commands