accessing
label
	^ self wantsButton
		ifTrue: [ 'Toggle Popup on Debug' ]
		ifFalse: [ 
			(GsProcess usePopUpOnDebug
				ifTrue: [ '[x] ' ]
				ifFalse: [ '[o] ' ]) , ' Popup on debug' ]