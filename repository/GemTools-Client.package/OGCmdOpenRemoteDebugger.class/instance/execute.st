execution
execute
	| labels values logEntries ans |
	(self session executeStringNB: 'System needsCommit')
		ifTrue: [ (self confirm: 'About to abortTransaction. Okay?') ~~ true ifTrue: [ ^self ]].
	labels := OrderedCollection new.
	values := OrderedCollection new.
	labels add: 'Remove Continuations from Object Log'.
	values add: #removeContinuations.
	labels add: 'Clear Object Log'.
	values add: #emptyObjectLog.
	logEntries := self session jadeServer continuationsFromObjectLog.
	logEntries := logEntries gsSubStrings2: Character tab.
	1 to: logEntries size by: 2 do: [:i |
		labels add: (logEntries at: i).
		values add: (logEntries at: i + 1)].
	ans := OBChoiceRequest
		prompt: 'Remote Debugging...' 
		labels: labels 
		values: values 
		lines: #(2).
	ans == nil ifTrue: [ ^self ].
	ans isSymbol ifTrue: [ ^self perform: ans ].
	self session executeStringNB: 'OTRemoteDebugger debugContinuation: (Object _objectForOop: ', ans, ' asNumber)'
