accessing
toLabel: aString
	| writeStream |
	writeStream := WriteStream on: String new.
	aString do: [:each | each isUppercase ifTrue: [writeStream nextPut: $ ; nextPut: each] ifFalse: [writeStream nextPut: each]].
	^writeStream contents capitalized