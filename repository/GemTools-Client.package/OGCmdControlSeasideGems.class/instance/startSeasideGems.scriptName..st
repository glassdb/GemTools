private
startSeasideGems: sessionNode scriptName: runSeasideGems

	| commandLine |
	Transcript cr; show: '---Startinging Seaside gems', ' ('; print: TimeStamp now; show: ')'.
	commandLine := (GsSystem seasideBinDirectoryFor: sessionNode), runSeasideGems, ' start ', self args.
	Transcript cr; show: (self session executeString: 'System performOnServer: ', commandLine printString) withSqueakLineEndings.
	Transcript cr; show: '---Finished starting Seaside gems', ' ('; print: TimeStamp now; show: ')'.
