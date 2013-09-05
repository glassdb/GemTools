constructing
columnClass
	(self maxMultipleSelectionPanes ~~ nil and: [columns size >= self maxMultipleSelectionPanes]) ifTrue: [ ^super columnClass ].
	^OSMultipleSelectionColumn