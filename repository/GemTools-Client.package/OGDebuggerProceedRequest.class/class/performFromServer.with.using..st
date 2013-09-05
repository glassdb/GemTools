client forwarder
performFromServer: aSelector with: argsOop  using: aSession
	| debuggerOop |
	aSelector == #signalDebuggerProceedRequestUsing: 
		ifFalse: [^self halt: 'Unknown message forwarded from server: ', aSelector printString].
	debuggerOop := aSession receiver: argsOop perform: 'at:' with: 1.
	(GsOTDebugger session: aSession oopType: (aSession receiver: debuggerOop perform: 'debugger')) resumeProcess.
	^nil