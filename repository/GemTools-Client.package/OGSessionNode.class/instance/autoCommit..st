accessing
autoCommit: aBoolean

	autoCommit := aBoolean.
	self session autoCommit: aBoolean.
	"if autoCommit is turned off, autoMigrate and autoAbort should be turned off."
	autoCommit 
		ifFalse: [ 
			self 
				autoAbort: false;
				autoMigrate: false ]
