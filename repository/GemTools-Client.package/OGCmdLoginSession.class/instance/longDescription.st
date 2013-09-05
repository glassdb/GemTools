accessing
longDescription

	^target isSessionNode
		ifTrue: [
			target isLoggedIn
				ifTrue: [ 'Logout selected session' ]
				ifFalse: [ 'Login selected session' ]]
		ifFalse: [ 'Login selected session' ]