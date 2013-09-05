execution
execute

 	(self session executeString: '(System myUserProfile resolveSymbol: #SendMail) ~~ nil')
		ifFalse: [^self inform: 'SendMail is not installed!'].
	GsEmailEditor openForGlass: self sessionNode glassPackageName session: self session
