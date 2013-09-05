as yet unclassified
initialize: aSession

	session := aSession.
	super initialize.
	gemstonePlatform := aSession jadeServer objectNamed: #OBGemStonePlatform.
	environment := gemstonePlatform.
	ivCache := Dictionary new.
	internedSymbolCache := Dictionary new.
	