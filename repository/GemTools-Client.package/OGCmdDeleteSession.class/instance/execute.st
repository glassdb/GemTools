execution
execute
	| launcherNode |
	launcherNode := self browser root.
	launcherNode sessions size > 1
		ifTrue: [
			(self confirm: 'Are you sure you want to delete this session?')
				ifTrue: [ 
					target logout. "just in case"
					launcherNode removeSession: target.
					self update ] ]