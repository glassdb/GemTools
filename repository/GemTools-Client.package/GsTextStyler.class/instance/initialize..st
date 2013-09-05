as yet unclassified
initialize: aSession
	super initialize.
"	stylingEnabled :=false."
	session := aSession.
	environment := aSession jadeServer objectNamed: #OBGemStonePlatform.
	parser := GsParser basicNew initialize: aSession.
