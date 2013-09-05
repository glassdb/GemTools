accessing
columns
	| info cache |
	columns ~~ nil ifTrue: [ ^columns].
	info := session jadeServer columnPanelInfoFor: oopType.
	info := info gsSubStrings2: Character tab.
	columns := OrderedCollection new.
	cache := GsOBBrowser classCache at: session.
	1 to: info size by: 2 do: [:i | | oop cOop column |
		oop := session library oopTypeFor: (info at: i).
		cOop := session library oopTypeFor: (info at: i+1).
		column := (cache at: cOop) session: session oopType: oop.
		column panel: self.
		column announcer: self announcer.
		column subscribe.
		columns add: column.
	].
	^columns
