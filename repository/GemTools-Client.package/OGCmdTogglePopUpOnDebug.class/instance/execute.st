execution
execute
	GsProcess usePopUpOnDebug: GsProcess usePopUpOnDebug not.
	self wantsButton
		ifTrue: [ self inform: 'PopUp on Debug set to: ' , GsProcess usePopUpOnDebug printString ]