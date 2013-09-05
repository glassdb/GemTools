private
restoreLogs: sessionNode

	| successfulRestore |
	successfulRestore := false.
	[self session executeString: self restoreFromCurrentLogsCode ]
		on: GsRuntimeError
		do: [:ex | 
			ex tag number == 4048 
				ifTrue: [ 
					successfulRestore := true.
					Transcript cr; show: ex description ]
				ifFalse: [
					Transcript cr; show: ex description.
					Transcript cr; show: 'Performing commitRestore to allow access to repository.' ]].
	sessionNode 
		logout;
		basicLogin.
	^successfulRestore