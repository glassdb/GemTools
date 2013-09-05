session support
setAutoCommit: commitBool autoMigrate: migrateBool
	
	^self gsPerform: #setAutoCommit:autoMigrate: withArguments: (Array with: commitBool with: migrateBool).