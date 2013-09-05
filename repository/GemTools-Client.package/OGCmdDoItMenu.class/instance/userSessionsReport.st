expressions
userSessionsReport
	| result session |
	session := self session.
	result := (session executeString:  '| result |
		result := String new.
		System currentSessions do: [:idx | | sessionArray |
			sessionArray := System descriptionOfSession: idx.
			result add: idx asString, '': ''.
			result add: ''User: '', (sessionArray at: 1) userId.
			result add: '' | SerialNumber: '', (sessionArray at: 9) asString.
			result add: '' | PID: '', (sessionArray at: 2) asString.
			result add: '' | IP-Adr.: '', (sessionArray at: 11) asString.
			result add: '' | RefOldestCR: '', (sessionArray at: 8) asString.
			result add: (String with: Character cr)].
			result') asString.
	
	UIManager default edit: result withSqueakLineEndings label: 'User Session Report' accept: nil