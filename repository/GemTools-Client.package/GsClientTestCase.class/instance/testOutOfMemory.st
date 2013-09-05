GCI Tests
testOutOfMemory

	self 
		should: [ session executeString: '| ar |
ar := Array new.
[ true] whileTrue: [ar add: (Array new: 100000)]
' ]  
		raise: Error 
		whoseDescriptionIncludes: 'VM temporary object memory is full'
		description: 'test out of memory'.
	self recoverSession