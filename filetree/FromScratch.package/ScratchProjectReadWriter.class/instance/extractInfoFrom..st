api
extractInfoFrom: aByteArray

	| s version ret |
	s := ReadStream on: aByteArray.
	version := self extractFileVersionOn: s.
	version = fileVersion ifFalse: [ 
		^ self error: 'Invalid file version!' localized ].
	s skip: 4.
	ret := objStream readObjFrom: s showProgress: false.
	s close.
	^ ret