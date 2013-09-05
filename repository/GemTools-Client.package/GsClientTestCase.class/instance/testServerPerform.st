Server Tests
testServerPerform

	| result |
	result := session jadeServer returnString.
	self assert: result = 'I return a string'.
	result := session jadeServer returnInteger.
	self assert: result = 42.
	result := session jadeServer echo: library oopClassString.
	self assert: result asNumber = library oopClassString asOop.
