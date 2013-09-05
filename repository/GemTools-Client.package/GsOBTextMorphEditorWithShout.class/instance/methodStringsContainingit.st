menu messages
methodStringsContainingit
	"Open a browser on methods which contain the current selection as part of a string constant."

	self lineSelectAndEmptyCheck: [^ self].
	model doItReceiver session jadeServer methodStringsContainingIt: self selection string.
