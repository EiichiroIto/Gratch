test
testStream

	| obj a |
	obj := self newObjStream.
	self assert: obj stream isNil.
	a := WriteStream on: ByteArray new.
	obj stream: a.
	self assert: obj stream identicalTo: a