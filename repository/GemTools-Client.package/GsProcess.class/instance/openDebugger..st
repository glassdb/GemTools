debugging
openDebugger: anException

	| debugger terminated result debuggerChoice label |
	(session isFatalError: anException tag)
		ifTrue: [ 
			"Cause the client debugger to be opened"
			| ex |
			ex := Error new.
			ex tag: anException.
			^ex signal: anException tag message].
	[
		terminated := true.
		label := anException tag number == 2318
			ifTrue: [ | args signalText |
				args := anException tag args.
				(args size < 2 or: [ (signalText := args at: 2) == nil ])
					ifTrue: [ anException tag message ]
					ifFalse: [ signalText ]]
			ifFalse: [ anException tag message ].
		debuggerChoice := self class usePopUpOnDebug
			ifTrue: [
				UIManager default chooseFrom:  #('Debug GemStone stack' 'Debug Squeak stack' 'Proceed')
					title: label ]
			ifFalse: [1].
		debuggerChoice == 0
			ifTrue: [ | proc |
				"No Choice - terminate active process"
				self clearStack.
				proc := Processor activeProcess.
				Project spawnNewProcessIfThisIsUI: proc.
				proc terminate.
				"should not get here"
				^#terminate
				].
		debuggerChoice == 2
			ifTrue: [
				"Debug Squeak stack"
				"Cannot continue through the GemStone debugger ... for now"
				self clearStack.
				^self  halt.].
		debuggerChoice == 1
			ifTrue: [ | process |
				anException tag context isNil 
					ifTrue: [
						self clearStack. 
						^self error: 'Cannot debug GemStone process: ', anException tag message printString ].
				"Debug GemStone stack"
		 		debugger := GsOTDebugger 
					session: session
					oopType: (session jadeServer openDebuggerOn:  anException tag context asOopType).
				
				debugger defaultLabel: label.
				debugger labelString: label.
				process := Processor activeProcess.
				Project spawnNewProcessIfThisIsUI: process.
				debugger interruptedProcess: process.
				WorldState addDeferredUIMessage: [
					debugger open ].
				process suspend.
				result := #resume.
				terminated := false.
				]
			ifFalse: [
				"Proceed"
				result := #resume.
				terminated := false.
				]
	] ensure: [
		terminated ifTrue: [
			self clearStack.
		].
	].
	^result.
