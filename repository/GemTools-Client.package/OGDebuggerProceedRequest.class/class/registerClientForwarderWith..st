client forwarder
registerClientForwarderWith: aSession

	| clientForwarderOop |
	clientForwarderOop := aSession registerClientObjectForwarder: self.
	aSession jadeServer registerDebuggerProceedClientForwarder: clientForwarderOop