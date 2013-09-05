menu messages
debugIt

	| receiver context |
	receiver := model doItReceiver.
	(receiver isKindOf: GsDoItReceiver)	
		ifTrue: [ context := nil ]
		ifFalse: [ context := receiver ].
	[ receiver session jadeServer debugIt: self selection asString in: context ] 
		on: GsCompileError 
		do: [:ex |  ^self reportCompilerError: ex for: receiver session].

