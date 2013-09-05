private
restoreFromBackup: backupFilename sessionNode: sessionNode

	[self session jadeServer restoreFromBackup: backupFilename ]
			on: GsRuntimeError
			do: [:ex | 
				ex tag number ~~ 4046 ifTrue: [ ^ex pass ].
				Transcript cr; show: ex description ].
	sessionNode 
		logout;
		basicLogin.
