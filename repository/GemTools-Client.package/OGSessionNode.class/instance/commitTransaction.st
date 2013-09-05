actions
commitTransaction

	self isLoggedIn ifFalse: [ ^false ].
	self session commit
		ifTrue: [^true]
		ifFalse: [
			(UIManager default confirm: 'Commit failed. Would you like to inspect transaction conflicts?')
				ifTrue: [ self session jadeServer inspectTransactionConflicts ]
				ifFalse: [ ^false]]