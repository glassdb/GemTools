callbacks
listSize
	listSize ~~ nil ifTrue: [ ^listSize ].
	self updateInfo.
	^listSize