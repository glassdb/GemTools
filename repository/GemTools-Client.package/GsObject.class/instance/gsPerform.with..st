Tools Support
gsPerform: aString with: anObject

	^session
		receiver: oopType
		perform: aString
		with: anObject.
