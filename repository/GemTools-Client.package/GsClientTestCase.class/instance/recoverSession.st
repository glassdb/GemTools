framework
recoverSession

	session logout.
	self assert: session isValid not.
	resource setUp.
	session := resource session.
	self assert: (session executeString: '1+1') = 2.
