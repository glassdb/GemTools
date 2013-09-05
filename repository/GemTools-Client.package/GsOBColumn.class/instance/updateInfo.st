callbacks
updateInfo
	| info |
	info := session jadeServer columnInfoFor: oopType.
	info = 'true'
		ifTrue: [
			list := cachedList.
			icons := cachedIcons.
			listSize := list size]
		ifFalse: [
			(info  isKindOf: OopType)
				ifTrue: [ self updateInfoFromOopType: (GsObject subClassObjectInSession: session oopType: info) ]
				ifFalse: [ self updateInfoFromString: info ].
			cachedList := list.
			cachedIcons := icons].
	^list