callbacks
list

	list ~~ nil ifTrue: [ ^list ].
	self updateInfo.
	^list
