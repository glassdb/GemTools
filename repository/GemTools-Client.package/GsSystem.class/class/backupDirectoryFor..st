environment
backupDirectoryFor: sessionNode

	| path |
	(path := sessionNode backupDirectory) isEmpty not ifTrue: [ ^path ].
	^(self dataDirectoryFor: sessionNode), self defaultBackupDirectoryName
