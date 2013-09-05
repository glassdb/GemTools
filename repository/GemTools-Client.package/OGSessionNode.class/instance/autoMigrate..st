accessing
autoMigrate: aBoolean

	autoMigrate := aBoolean.
	self session autoMigrate: aBoolean.
	"for autoMigrate to be activated, autoCommit must also be activated"
	autoMigrate ifTrue: [ self autoCommit: true ]
