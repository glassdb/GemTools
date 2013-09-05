*gemTools-client
registerClientForwarders: aSession

	self allSubclassesDo: [:cl | 
		(cl respondsTo: #registerClientForwarderWith:) ifTrue: [cl registerClientForwarderWith: aSession ]]