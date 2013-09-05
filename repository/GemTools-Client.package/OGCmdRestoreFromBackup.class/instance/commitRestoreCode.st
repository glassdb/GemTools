private
commitRestoreCode

	^'| status |
	status := SystemRepository restoreStatus.
	(status asLowercase beginsWith: ''Restoring from Transaction Log files'' asLowercase)
		ifFalse: [ ^nil error: ''System is not prepared to commit restore: '', status].
	status := SystemRepository commitRestore.
	"normally terminates the session"
	^nil error: ''Commit restore failed: '', status'