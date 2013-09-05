installation define session section
defineGemToolsCustomSession
	^HelpTopic 
		title: 'Custom session'
		contents:	
'	| hostname |
	hostname := ''localhost''. "replace with the ip address or hostname of the machine where stone is running"
	OGLauncherNode addSessionWithDescription:
		(OGCustomSessionDescription new
			"Edit the following fields to match your installation"
			name: ''Custom'';
			stoneHost: hostname;
			stoneName: ''seaside'';
			gemHost: ''localhost'';
			netLDI: ''50377'';
			gemTask: ''gemnetobject'';
			userId: ''DataCurator'';
			password: ''swordfish'';
			osUserId: '''';
			osPassword: '''';
			backupDirectory: '''';
			dataDirectory: '''';
			yourself).
'