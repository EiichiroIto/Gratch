api
saveFile: aFileReference

	| stream |
	aFileReference isFile ifTrue: [ aFileReference delete ].
	stream := aFileReference writeStream.
	STON put: dictionary onStream: stream.
	stream close