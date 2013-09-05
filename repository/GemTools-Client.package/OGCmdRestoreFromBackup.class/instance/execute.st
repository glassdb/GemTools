execution
execute

	| sessionNode backupFileNames backupFilename backupFileDir note |
	backupFileDir := GsSystem backupDirectoryFor: self sessionNode.
	backupFileNames := self getBackupFilenamesIn: backupFileDir.
	backupFileNames isEmpty
		ifTrue: [^self inform: 'There are no files in the server directory: ', backupFileDir printString].
	(backupFilename := OBChoiceRequest 
				prompt: 'Choose a backup file.' 
				labels: backupFileNames 
				values: backupFileNames) == nil ifTrue: [ ^self ].
	(OBConfirmationRequest prompt: 'Are you sure you want to restore from a backup?
	Your G/S windows will be closed automatically, the current session will be ABIORTED and all other sessions will be stopped.' confirm: 'Yes' cancel: 'No') == true 
		ifFalse: [ ^self ].
	target closeAllSessionWindows.
	backupFilename := backupFileDir, backupFilename.
	Transcript cr; show: '---Starting restore from ', backupFilename printString, ' ('; print: TimeStamp now; show: ')'.
	sessionNode := self sessionNode.
	self restoreFromBackup: backupFilename sessionNode: sessionNode.
	note := ''.
	self restoreTranLogs
		ifTrue: [ (self restoreLogs: sessionNode) ifFalse: [ note := ' NOTE: Restore from transaction logs failed.' ]]
		ifFalse: [Transcript cr; show: 'Skipping the restore of tranlogs.' ].
	self commitRestore: sessionNode.
	Transcript cr; show: '---Finished restore from ', backupFilename printString, ' ('; print: TimeStamp now; show: ')'.
	self sessionNode backupFileName: nil.
	self update.	
	self seasideInstalled
		ifTrue: [
			(OBConfirmationRequest prompt: 'Restore from backup complete and new session logged in. ', note, 'Would you like your Seaside Gems restarted?' confirm: 'Restart Seaside gems' cancel: 'No')
				ifTrue: [ self restartSeasideGems: sessionNode ]]
		ifFalse: [ OBInformRequest message: 'Restore from backup complete.' ]
