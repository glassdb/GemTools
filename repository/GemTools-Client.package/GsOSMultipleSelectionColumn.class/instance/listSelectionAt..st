callbacks
listSelectionAt: anIndex

	^self multipleSelection at: anIndex ifAbsentPut: [ 
		session receiver: oopType perform: 'listSelectionAt:' with: anIndex ]