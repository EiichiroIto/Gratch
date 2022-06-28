test
testReadAndStore
	| obj s x data r |
	obj := self newObjStream.
	data := 'アクセスランキング'.
	s := WriteStream on: ByteArray new.
	obj storeObj: data on: s.
	x := s contents.
	s := ReadStream on: x.
	r := obj readObjFrom: s showProgress: false.
	self assert: r equals: data