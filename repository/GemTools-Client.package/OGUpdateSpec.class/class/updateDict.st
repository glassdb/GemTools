accessing
updateDict

	| dict |
	dict := Dictionary new.
	self updateSpecs do: [:spec | dict at: spec version put: spec ].
	^dict