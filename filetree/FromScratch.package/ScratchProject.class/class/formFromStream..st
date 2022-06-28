accessing
formFromStream: aStream
	| version info |
	version := self objStreamClass fileVersion: self from: aStream.
	version = self fileVersion
		ifFalse: [ ^ nil ].
	aStream skip: 4.
	info := self objStreamClass new
		readObjFrom: aStream
		showProgress: false.
	^ info at: 'thumbnail'