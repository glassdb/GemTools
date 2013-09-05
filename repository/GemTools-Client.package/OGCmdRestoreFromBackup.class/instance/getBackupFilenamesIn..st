private
getBackupFilenamesIn: backupFileDir

	| backupFileNames |
	backupFileNames := self session jadeServer filesInServerDirectory: backupFileDir.
	backupFileNames := backupFileNames  gsSubStrings2: Character tab.
	^backupFileNames sortBy: [:a :b | a <= b ].
