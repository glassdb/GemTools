private
performOnServer: aSelectorString

	| receiver context source |
	receiver := model doItReceiver.
	(receiver isKindOf: GsDoItReceiver)	
		ifTrue: [ context := nil ]
		ifFalse: [ context := receiver ].
	source := self selectionAsStream upToEnd.
	[^receiver session jadeServer
		gsPerform: aSelectorString 
		withArguments: (Array with: source with: context)] 
			on: GsCompileError 
			do: [:ex |  ^self reportCompilerError: ex for: receiver session].
