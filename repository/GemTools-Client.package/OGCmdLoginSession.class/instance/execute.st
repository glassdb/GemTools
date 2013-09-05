execution
execute
	target isSessionNode ifFalse: [ ^self ].
	target isLoggedIn
		ifTrue: [
			target hasSessionWindows 
				ifTrue: [
					(OBConfirmationRequest prompt: 'Are you sure you want to Logout?
			Your G/S windows will be closed automatically.' confirm: 'Yes' cancel: 'No') == true 
				ifFalse: [ ^self ]].
			target logout ]
		ifFalse: [ target login ].
	self update