callbacks
list

	list ~~ nil ifTrue: [ ^list ].
	list := (session jadeServer filteredListFor: self) gsSubStrings2: Character tab.
	^list