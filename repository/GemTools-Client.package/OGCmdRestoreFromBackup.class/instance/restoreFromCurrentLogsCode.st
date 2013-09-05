private
restoreFromCurrentLogsCode

	^'| status |
	status := SystemRepository restoreStatus.
	(status beginsWith: ''Restoring from Transaction Log files'' )
		ifFalse: [ ^nil error: ''System is not prepared to restore from transaction log files: '', status].
	status := SystemRepository restoreFromCurrentLogs.
	"normally terminates the session"
	^nil error: ''Restore from current transaction logs failed: '', status'