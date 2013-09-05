Browser
classSide

	classSide isNil ifTrue: [
		self classSideOopType: (self gsPerform: 'class').
	].
	^classSide.
