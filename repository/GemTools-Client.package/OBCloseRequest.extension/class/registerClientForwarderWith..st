*gemTools-client
registerClientForwarderWith: aSession

	| clientForwarderOop |
	clientForwarderOop := aSession registerClientObjectForwarder: self.
	aSession jadeServer registerCloseClientForwarder: clientForwarderOop