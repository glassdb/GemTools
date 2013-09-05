*gemTools-client
asDoubleByteArray

	| byteArray doubleByteArray index |
	byteArray := self asByteArray.
	doubleByteArray := ByteArray new: byteArray size / 2.
	index := 1.
	1 to: byteArray size by: 4 do: [:i |
		((byteArray at: i) > 0 or: [(byteArray at: i+1) > 0]) 
			ifTrue: [self error: 'Cannot convert to DoubleByteString - character range too large'].
		doubleByteArray at: index put: (byteArray at: i + 2).
		doubleByteArray at: index + 1 put: (byteArray at: i + 3).
		index := index + 2].
	^doubleByteArray