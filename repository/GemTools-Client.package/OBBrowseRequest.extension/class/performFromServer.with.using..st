*gemTools-client
performFromServer: aSelector with: argsOop  using: aSession
	| browserOop browser |
	aSelector == #signalBrowseRequestUsing: 
		ifFalse: [^self halt: 'Unknown message forwarded from server: ', aSelector printString].
	browserOop := aSession receiver: argsOop perform: 'at:' with: 1.
	browser := GsOBBrowser session: aSession oopType: (aSession receiver: browserOop perform: 'browser').
	GsOBBrowseRequest signal: browser.
	^nil