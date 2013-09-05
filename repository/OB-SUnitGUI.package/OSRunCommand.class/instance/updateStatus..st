updating
updateStatus: aBoolean
	"Update the status display, at most once a second if aBoolean is true."

	(aBoolean and: [ self lastUpdate + 10 >= Time totalSeconds ])
		ifTrue: [ ^ self ].
	self update.
	lastUpdate := Time totalSeconds.