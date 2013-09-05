installation define session section
defineGemToolsApplianceSession
	^HelpTopic 
		title: 'Appliance session'
		contents:	
'	| hostname |
	hostname := ''''. "replace with the ip address or hostname of the vm ware appliance"
	OGLauncherNode addSessionWithDescription:
		(OGApplianceSessionDescription new
			name: ''Appliance'';
			stoneHost: hostname;
			stoneName: ''seaside'';
			yourself).
'