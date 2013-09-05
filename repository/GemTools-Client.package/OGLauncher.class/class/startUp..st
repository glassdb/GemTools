startup
startUp: resuming

	resuming 
		ifTrue: [
			SystemWindow allInstances do: [:ea | 
				(ea model isKindOf: self) 
					ifTrue: [ ea model updateForStart ]]]