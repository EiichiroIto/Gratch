test
testGetBigIntId

	| obj s r |
	s := ReadStream on: #[ 0 8 0 0 244 68 130 145 99 69 ].
	obj := self newObjStream.
	obj stream: s.
	r := obj getBigInt: nil id: 6.
	self assert: r equals: 5000000000000000000