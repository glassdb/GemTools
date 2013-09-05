callbacks
selection: anInteger

	((selection = anInteger or: [anInteger = 0]) or: [anInteger ~= 0 and: [ (self multipleSelection at: anInteger ifAbsent: [false]) not ]])
		ifTrue: [
			(session receiver: oopType perform: 'selection:' with: anInteger)
				ifTrue: [ self multipleSelection at: anInteger put: true]]