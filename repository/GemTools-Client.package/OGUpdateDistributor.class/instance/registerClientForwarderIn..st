updating
registerClientForwarderIn: aGciSession

	| clientForwarderOopType |
	clientForwarderOopType := aGciSession registerClientObjectForwarder: self.
	aGciSession jadeServer registerClientUpdateConcentrator: clientForwarderOopType.
	session := aGciSession
