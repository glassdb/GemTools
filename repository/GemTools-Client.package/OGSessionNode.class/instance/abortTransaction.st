actions
abortTransaction

	self isLoggedIn ifFalse: [ ^self ].
	(self confirm: 'Are you sure you want to abort this transaction? You will lose all of your work since the last commit.')
		ifTrue: [
			self session abort.
			self clearClassOrganizerCache]