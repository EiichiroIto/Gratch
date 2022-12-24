api
extractFormOn: aStream

	| version info |
	version := self extractFileVersionOn: aStream.
	version = fileVersion ifFalse: [ ^ nil ].
	aStream skip: 4.
	info := objStream readObjFrom: aStream showProgress: false.
	^ info at: 'thumbnail'