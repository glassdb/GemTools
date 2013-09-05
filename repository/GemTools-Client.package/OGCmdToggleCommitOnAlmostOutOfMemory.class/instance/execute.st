execution
execute

	self staticHandlerInstalled
		ifTrue: [ self uninstallStaticHandler ]
		ifFalse: [ self installStaticHandler ]