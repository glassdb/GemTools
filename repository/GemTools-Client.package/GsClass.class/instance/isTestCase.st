Testing
isTestCase
	^self allSuperclasses contains: [ :aSuperClass | aSuperClass name asSymbol == #TestCase]