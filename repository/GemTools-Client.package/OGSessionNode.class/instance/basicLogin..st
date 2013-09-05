actions
basicLogin: initializeServer

	| desc |
	self isLoggedIn ifTrue: [ ^self ].
	desc := self sessionDescription.
	session := GciSession new
		gemNRS: desc gemNRS;
		stoneNRS: desc stoneNRS;
		userID: desc userId;
		yourself.
	[
		(session 
			login: desc password
			osUser: (desc isGuest ifTrue: [''] ifFalse: [ desc osUserId ])
			osPassword: (desc isGuest ifTrue: [''] ifFalse: [ desc osPassword ])
			initializeServer: initializeServer)
				ifFalse: [ | gciError messageText |
					gciError := session getAndClearLastError.
					messageText := gciError message.
					session := nil.
					^Error signal: messageText, ' For further information about login failures, check the gem log file' ].
	] on: Error do: [:ex | 
		session := nil.
		^ex pass ].
	usingMetacello := glassPackageName := nil.
	windowSessionNumber := session number.
	session windowLabel: ' G/S[', self sessionDescription name, ':', windowSessionNumber printString, ']'.