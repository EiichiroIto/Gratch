file read/write
extractInfoFrom: aByteArray
	| s version obj |
	obj := self newObjStream.
	s := ReadStream on: aByteArray.
	version := obj class fileVersion: self class from: s.
	version = self class fileVersion
		ifFalse: [ ^ self inform: 'Invalid file version!' localized ].
	s skip: 4.
	info := obj readObjFrom: s showProgress: false