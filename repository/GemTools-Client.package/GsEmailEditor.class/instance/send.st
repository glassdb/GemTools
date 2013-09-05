actions
send
	| result |
	to := toField contents asString.
	from := fromField contents asString.
	subject := subjectField contents asString.
	textField accept. 
	result := session executeString: 'SendMail sendFrom: ' , from printString , ' to: ', to printString , ' subject: ' , subject printString, ' text: ', text asString printString.
	result
		ifTrue: [self delete]
		ifFalse: [self inform: 'Email couldn''t be send. Please check your SendMail preferences!']