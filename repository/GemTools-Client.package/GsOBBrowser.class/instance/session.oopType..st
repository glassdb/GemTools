initializing
session: aGciSession oopType: anOopType

	| info |
	session := aGciSession.
	windowSessionNumber := session number.
	oopType := anOopType.
	info := session jadeServer panelInfoFor: oopType.
	info := info gsSubStrings2: Character tab.
	(session library localForSpecial: (session library oopTypeFor: (info at: 2)  asNumber)) ifTrue: [ ^self specialCasedBrowser: info ].
	self session: aGciSession oopType: anOopType info: info