entry points
storeObj: anObject on: aStream
	| str |
	str := STON toString: anObject.
	str := ZnUTF8Encoder default encodeString: str.
	aStream nextPutAll: str