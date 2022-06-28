test
testReadObjFromShowProgress
	| obj s r |
	obj := self newObjStream.
	s := ReadStream on: '123' asByteArray.
	r := obj readObjFrom: s showProgress: false.
	self assert: r equals: 123.
	s := ReadStream on: '''abc''' asByteArray.
	r := obj readObjFrom: s showProgress: false.
	self assert: r equals: 'abc'