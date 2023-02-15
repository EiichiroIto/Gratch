test
testArg

	| obj |
	obj := self newObj.
	self assert: obj arg isNil.
	obj arg: $a.
	self assert: obj arg equals: $a.
	obj arg: $b.
	self assert: obj arg equals: $b