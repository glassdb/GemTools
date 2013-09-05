private
stopSeasideGems: sessionNode scriptName: runSeasideGems

	| commandLine |
	Transcript cr; show: '---Stopping Seaside gems', ' ('; print: TimeStamp now; show: ')'.
	commandLine := (GsSystem seasideBinDirectoryFor: sessionNode), runSeasideGems, ' stop ', self args.
	Transcript cr; show: (self session executeString: 'System performOnServer: ', commandLine printString) withSqueakLineEndings.
	Transcript cr; show: '---Finished stopping Seaside gems', ' ('; print: TimeStamp now; show: ')'.
