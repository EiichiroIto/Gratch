fixed format-writing
putBigInt: anObject id: classID

	| len |
	firstPass ifTrue: [ ^ self ].
	stream nextPut: classID.
	len := anObject numberOfDigitsInBase: 256.
	stream uint16: len.
	1 to: len do: [ :i | stream nextPut: (anObject byteAt: i) ]