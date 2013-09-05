updating
resumeProcess

	| proc |
 	proc := self interruptedProcess.
	"prevent windowIsClosing logic from terminating the process"
	interruptedProcess := nil.
	Project resumeProcess: proc.
	(SystemWindow allInstances detect: [:ea | ea model = self] ifNone: []) ifNotNilDo:
		[:sw |
		sw delete].
	World displayWorld.
	Processor terminateActive.
