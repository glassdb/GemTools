building
selection

	| info |
	selection ~~ nil ifTrue: [ ^selection ].
	info := session jadeServer textSelectionInfoFor: oopType.
	info := info gsSubStrings2: Character tab.
	selection := (info at: 2) = '0'
		ifTrue: [ 1 to: 0 ]
		ifFalse: [ Interval from: (info at: 1) asInteger to: (info at: 2) asInteger by: (info at: 3) asInteger ].
	^selection