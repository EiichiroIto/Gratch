test
testSubName

	| obj |
	obj := self newMorph.
	self assert: obj subName isEmpty.
	obj subName: 'abc'.
	self assert: obj subName equals: 'abc'.
	obj subName: 'def'.
	self assert: obj subName equals: 'def'