test
testPutBigIntId

	| obj s |
	s := WriteStream on: ByteArray new.
	obj := self newObjStream.
	obj firstPass: false.
	obj stream: s.
	self assert: obj stream contents isEmpty.
	obj putBigInt: 5000000000000000000 id: 123.
	self
		assertCollection: obj stream contents
		equals: #[ 123 0 8 0 0 244 68 130 145 99 69 ]