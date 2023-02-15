test
testColor

	| obj |
	obj := self newObj.
	self assert: obj color isNil.
	obj color: Color red.
	self assert: obj color equals: Color red