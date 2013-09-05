execution
execute
	"see SentButNotImplementedTest in GemStone"

	self session executeStringNB: '| sbni sentNotImplemented |
	sbni := SentButNotImplementedTest new.
	(sentNotImplemented := sbni sentButNotImplemented) removeAllPresent: sbni specialCases.
	sentNotImplemented isEmpty ifTrue: [ ^OBInformRequest message: ''Sent but not Implemented is clean''].
	sentNotImplemented inspect'.
