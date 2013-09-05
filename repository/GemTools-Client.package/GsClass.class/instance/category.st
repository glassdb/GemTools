Accessors
category

	category isNil ifTrue: [
		| error |
		category := self gsPerform: #'_classCategory'.
		category isNil ifTrue: [category := self class undefinedCategoryName].
	].
	^category.
	