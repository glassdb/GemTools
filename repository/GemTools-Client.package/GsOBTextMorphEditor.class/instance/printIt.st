menu messages
printIt

	| result |
	self selectLine.
	result := self performOnServer: 'printIt:in:'.
	result isString ifTrue: [ self afterSelectionInsertAndSelect: result withSqueakLineEndings ]