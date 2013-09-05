framework
setUp

	| flag |
	super setUp.
	session := GciSession new
		gemNRS: self gemNRS;
		stoneNRS: self stoneNRS;
		userID: 'DataCurator'
		yourself.
	flag := session login: self password.
	flag ifFalse: [self error: 'Could not login - check hard-coded test configuration'].
	library := session library.
	