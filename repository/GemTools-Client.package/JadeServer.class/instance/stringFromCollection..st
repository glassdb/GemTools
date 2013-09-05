private
stringFromCollection: aCollection

	| stream |
	stream := WriteStream on: String new.
	aCollection do: [:each | 
		stream nextPutAll: each; tab.
	].
	^stream contents.
	