private
commitRestore: sessionNode

	[self session executeString: self commitRestoreCode ]
		on: GsRuntimeError
		do: [:ex | 
			ex tag number ~~ 4048 ifTrue: [ ^ex pass ].
			Transcript cr; show: ex description ].
	sessionNode 
		logout;
		login.
