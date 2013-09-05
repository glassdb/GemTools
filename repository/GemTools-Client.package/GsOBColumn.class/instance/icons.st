callbacks
icons
	
	icons ~~ nil ifTrue: [ ^icons ].
	self updateInfo.
	^icons