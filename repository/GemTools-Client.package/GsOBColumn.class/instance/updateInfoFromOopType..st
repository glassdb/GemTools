callbacks
updateInfoFromOopType: anOopType
	| info iconsSize |
	info := anOopType asLocalObjectCopy.
	selection := info at: 1.
	selection = 'nil' 
		ifTrue: [ selection := 0 ]
		ifFalse: [ selection := selection asInteger].
	listSize := (info at: 2) asInteger.
	iconsSize := (info at: 3) asInteger.
	listSize > 0
		ifTrue: [ list := (info copyFrom: 4 to: listSize + 3) collect: [:ea | ea asLocalObjectCopy ] ]
		ifFalse: [ list := #() ].
	iconsSize > 0
		ifTrue: [icons := (info copyFrom: (listSize + 3 + 1) to: info size) 
					collect: [:ea | ea = 'nil'
									ifTrue: [nil]
									ifFalse: [ea asSymbol]]]
		ifFalse: [icons := Array new: listSize withAll: nil].
	^list
