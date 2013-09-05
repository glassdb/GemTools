framework
tearDown

	super tearDown.
	session logout.
	session := nil.
	library := nil.
