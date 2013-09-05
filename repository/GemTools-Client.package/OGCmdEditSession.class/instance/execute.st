execution
execute
	| sessionDescription |
	sessionDescription := target sessionDescription obConfigure.
	sessionDescription ~~ nil 
		ifTrue: [ 
			target sessionDescription: sessionDescription.
			self update ]