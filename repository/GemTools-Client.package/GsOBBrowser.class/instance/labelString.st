accessing
labelString

	labelString ~~ nil ifTrue: [ ^labelString ].
	labelString := (self session receiver: self oopType perform: 'labelString'), ' - ', self session windowLabel.
	^labelString