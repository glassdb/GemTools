execution
removeContinuations

	| count |
	count := 0.
	[	count := count + 1.
	 	count > 10 ifTrue: [ ^self inform: 'Could not acquire Object lock for ObjectLog'].
	 	(self session executeStringNB: 'System abortTransaction. ObjectLogEntry acquireObjectLogLock.') == nil ] 
			whileTrue: [ (Delay forSeconds: 1) wait ].
	self session executeString: 'ObjectLogEntry _objectLog removeAllSuchThat: [:logEntry | logEntry hasContinuation]. System commitTransaction.'