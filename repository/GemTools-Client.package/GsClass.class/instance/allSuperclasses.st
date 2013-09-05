Browser
allSuperclasses
	
	| list aClass |
	list := OrderedCollection new.
	aClass := self superClass.
	[
		aClass isNil.
	] whileFalse: [
		list add: aClass.
		aClass := aClass superClass.
	].
	^list.
	