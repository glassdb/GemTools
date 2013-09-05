callbacks
listSelectionAt: anInteger put: aValue 

	(self multipleSelection at: anInteger ifAbsent: [ false ]) ifFalse: [ ^nil ].
	(aValue not and: [self multipleSelection at: anInteger ifAbsent: [false]])
		ifTrue: [
			multipleSelection := nil.
			session receiver: oopType 
				perform: 'listSelectionAt:put:'
				withArguments: (Array with: anInteger with: aValue) ]