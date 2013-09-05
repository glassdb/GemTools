testing
hasSessionWindows

	self isLoggedIn ifFalse: [ ^false ].
	SystemWindow allSubInstances do: [:ea | | theModel |
		theModel := ea model.
		((theModel respondsTo: #closeOnLogout) and: [theModel closeOnLogout])
			ifTrue: [ ^true ]].
	^false