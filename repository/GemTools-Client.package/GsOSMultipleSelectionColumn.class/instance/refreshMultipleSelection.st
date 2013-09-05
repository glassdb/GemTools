private
refreshMultipleSelection

	| info |
	multipleSelection := Dictionary new.
	info := (session jadeServer multipleSelectInfoFor: oopType) gsSubStrings2: Character tab.
	1 to: info size by: 2 do:[:i |
		multipleSelection at: (info at: i) put: (info at: i + 1)]