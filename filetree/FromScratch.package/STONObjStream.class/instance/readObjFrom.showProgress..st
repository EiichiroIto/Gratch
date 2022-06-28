entry points
readObjFrom: aStream showProgress: aBoolean
	| str |
	str := aStream upToEnd.
	str := ZnUTF8Encoder default decodeBytes: str.
	^ STON fromString: str