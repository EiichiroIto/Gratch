test
testStoreObjOn
	| obj s |
	obj := self newObjStream.
	s := WriteStream on: ByteArray new.
	obj storeObj: 'abc' on: s.
	self assert: s contents equals: '''abc''' asByteArray.
	s := WriteStream on: ByteArray new.
	obj storeObj: 123 on: s.
	self assert: s contents equals: '123' asByteArray