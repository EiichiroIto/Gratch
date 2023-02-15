test
testFirstPass

	| obj |
	obj := self newObjStream.
	self assert: obj firstPass isNil.
	obj firstPass: true.
	self assert: obj firstPass.
	obj firstPass: false.
	self deny: obj firstPass