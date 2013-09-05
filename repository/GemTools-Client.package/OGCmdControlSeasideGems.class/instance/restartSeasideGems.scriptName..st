private
restartSeasideGems: sessionNode scriptName: runSeasideGems

	| commandLine |
	Transcript cr; show: '---Restarting Seaside gems', ' ('; print: TimeStamp now; show: ')'.
	commandLine := (GsSystem seasideBinDirectoryFor: sessionNode), runSeasideGems, ' restart ', self args.
	Transcript cr; show: (self session executeString: 'System performOnServer: ', commandLine printString) withSqueakLineEndings.
	Transcript cr; show: '---Finished restarting Seaside gems', ' ('; print: TimeStamp now; show: ')'.
