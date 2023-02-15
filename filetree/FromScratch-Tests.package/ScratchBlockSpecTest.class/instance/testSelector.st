test
testSelector

	| obj |
	obj := self newObj.
	self assert: obj selector isNil.
	obj selector: #abc.
	self assert: obj selector equals: #abc.
	obj selector: #def.
	self assert: obj selector equals: #def