GCI Tests
testGciReturnValues

	| localString |
	self assert: (session executeString: '''returnString''') = 'returnString'.
	self assert: (session executeString: '1000') = 1000.
	self assert: (session executeString: '1.1') = 1.1.
	self assert: (session executeString: 'true') == true.
	self assert: (session executeString: 'false') == false.
	self assert: (session executeString: '#''TEST_SYMBOL''') == #'TEST_SYMBOL'.
	self assert: (session executeString: '''returnString'' asDoubleByteString') = 'returnString'.
	self assert: (session executeString: '''TEST_SYMBOL'' asDoubleByteString asDoubleByteSymbol') == #'TEST_SYMBOL'.
	localString := String withAll: (OrderedCollection new
		add: $a;
		add: $b;
		add: 16r2013 asCharacter;	"n-dash"
		add: 16r20AC asCharacter;	"euro"
		add: 16r0161 asCharacter;	"s-caron"
		add: 16r010D asCharacter;	"c-caron"
		yourself).
	self assert: (session executeString: 'String new
		add: $a;
		add: $b;
		add: 16r2013 asCharacter;	"n-dash"
		add: 16r20AC asCharacter;	"euro"
		add: 16r0161 asCharacter;	"s-caron"
		add: 16r010D asCharacter;	"c-caron"
		yourself') = localString.
