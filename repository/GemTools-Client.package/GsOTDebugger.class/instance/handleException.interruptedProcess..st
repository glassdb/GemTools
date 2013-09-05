exception handling
handleException: anException interruptedProcess: aProcess
	"anException was signalled in the context of the process we are debugging"
	
	self halt: 'Error while debugger running ...'