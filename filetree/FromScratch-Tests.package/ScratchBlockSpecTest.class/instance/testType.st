test
testType

	| obj |
	obj := self newObj.
	self assert: obj type isNil.
	obj selector: #-.
	self assert: obj selector equals: #-.
	obj selector: #r.
	self assert: obj selector equals: #r