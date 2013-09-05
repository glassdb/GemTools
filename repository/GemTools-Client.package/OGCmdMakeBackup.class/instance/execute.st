execution
execute

	| backupFilename backupPath default |
	default := self sessionNode backupFileName.
	default isEmpty ifTrue: [ default := 'backup.dbf' ].
	(backupFilename := OBTextRequest 
							prompt: 'Enter backupfile name' 
							template: default) == nil ifTrue: [ ^self ].
	backupPath := (GsSystem backupDirectoryFor: self sessionNode), backupFilename.
	Transcript cr; show: '---Starting backup to ', backupPath printString, ' ('; print: TimeStamp now; show: ')'.
	self sessionNode backupFileName: backupFilename.
	self session jadeServer fullBackupTo: backupPath.
	self update.	
	Transcript cr; show: '---Finished backup to ', backupPath printString, ' ('; print: TimeStamp now; show: ')'.
	OBInformRequest message: 'Backup complete.'