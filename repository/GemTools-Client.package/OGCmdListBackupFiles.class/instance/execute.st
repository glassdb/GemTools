execution
execute

	| backupFileNames backupFileDir |
	backupFileDir := GsSystem backupDirectoryFor: self sessionNode.
	backupFileNames := self getBackupFilenamesIn: backupFileDir.
	backupFileNames isEmpty
		ifTrue: [^self inform: 'There are no files in the server directory: ', backupFileDir printString].
	OBChoiceRequest 
		prompt: 'Backup files in: ', backupFileDir printString
		labels: backupFileNames 
		values: backupFileNames