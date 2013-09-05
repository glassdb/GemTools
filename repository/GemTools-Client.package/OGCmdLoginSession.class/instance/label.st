accessing
label
	^target isSessionNode
		ifTrue: [
			target isLoggedIn
				ifTrue: [ 'Logout' ]
				ifFalse: [ 'Login' ]]
		ifFalse: [ 'Login' ]