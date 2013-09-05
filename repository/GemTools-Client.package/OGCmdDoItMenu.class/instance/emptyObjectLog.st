expressions
emptyObjectLog

	self session executeString: '
		(OBConfirmationRequest prompt: ''Empty Log?'')
			ifTrue: [ObjectLogEntry emptyLog. System commitTransaction]'.
	
