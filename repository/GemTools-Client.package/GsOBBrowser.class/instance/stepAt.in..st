morphic
stepAt: milliseconds in: aSystemWindow
	hasChanges ifTrue: [ self session receiver: self oopType perform: 'signalRefresh' ].
	hasChanges := false