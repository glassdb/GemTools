evaluating
doItReceiver

	^self isLoggedIn
		ifTrue: [
			GsDoItReceiver new
				session: self browser currentNode session;
				yourself.]
		ifFalse: [ nil ]