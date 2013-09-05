GCI Tests
testGciFetchObjImpl

	| oopType type |
	#('123 printString' 'ByteArray with: 1 with: 2') do: [:each | 
		oopType := library executeString: each.
		type := library apiGciFetchObjImpl: oopType.
		self assert: type = 1.
	].
	#('$a' '1' 'true' 'nil') do: [:each | 
		oopType := library executeString: each.
		type := library apiGciFetchObjImpl: oopType.
		self assert: type = 3.
	].
