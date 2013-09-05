expressions
showObjectLog
	| result session |
	session := self session.
	result := (session executeString:  '| result count |
		result := String new.
		count := 1.
		ObjectLogEntry objectLog do: [:each |
			result add: (count printString, ''. '').
			result add: (each printString copyReplacing: Character lf with: Character cr).
			result add: (String with: Character cr).
			count := count + 1 ].
		result') asString.
	UIManager default edit: result label: 'Object Log' accept: nil