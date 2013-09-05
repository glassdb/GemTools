execution
execute
	| types labels cls sessionDescription |
	types := ((OGCustomSessionDescription withAllSubclasses asArray select: [:ea | ea isValid]) sort: [:a :b | a label <= b label ]) asArray.
	labels := types collect: [:ea | ea label].
	cls := OBChoiceRequest 
		prompt: 'Session type:' 
		labels: labels
		values: types.
	cls == nil ifTrue: [ ^self ].
	sessionDescription := cls obConfigure.
	sessionDescription ~~ nil 
		ifTrue: [ 
			self browser root addSession: (OGSessionNode new sessionDescription: sessionDescription).
			self update ]