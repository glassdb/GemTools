*gemTools-client
registerClientForwarders: aSession
	| clientForwarderOop |
	clientForwarderOop := aSession registerClientObjectForwarder: Transcript.
	aSession jadeServer registerTranscriptClientForwarder: clientForwarderOop