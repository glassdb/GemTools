private
selectRecentVersionsFrom: versions

	| index |
	self wantsRecentHistory ifFalse: [ ^versions ].
	index := versions indexOf: self currentVersionName.
	^index == 0 
		ifTrue: [ versions ]
		ifFalse: [ versions copyFrom: 1 to: index ]