execution
emptyObjectLog

	self session executeStringNB: 'ObjectLogEntry emptyLog. System commitTransaction'