Browser
definitionST80

	definition isNil ifTrue: [
		definition := self gsPerform: 'definition'.
		definition := session changeLFToCR: definition.
	].
	^definition.
