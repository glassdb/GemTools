installation define session section
defineGemToolsStandardSession
	^HelpTopic 
		title: 'Standard session'
		contents:	
'	| hostname |
	hostname := ''localhost''. "replace with the ip address or hostname of the machine where stone is running"
	OGLauncherNode addSessionWithDescription:
		(OGStandardSessionDescription new
			"Edit the following fields to match your installation"
			name: ''Standard'';
			stoneHost: ''localhost'';
			stoneName: ''seaside'';
			gemHost: hostname;
			netLDI: ''50377'';
			userId: ''DataCurator'';
			password: ''swordfish'';
			backupDirectory: '''';
			yourself).
'