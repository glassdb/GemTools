GCI Tests
testLostSession

	self 
		should: [ session executeString: 'System logout' ]  
		raise: Error 
		whoseDescriptionIncludes: 'The GemStone session is terminating normally.'
		description: 'test lost session'.
	self recoverSession