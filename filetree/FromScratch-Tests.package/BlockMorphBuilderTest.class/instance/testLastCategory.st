test
testLastCategory

	| obj a |
	obj := self newBlockMorphBuilder.
	self assert: obj lastCategory isNil.
	obj lastCategory: 'abc'.
	self assert: obj lastCategory equals: 'abc'.
	obj lastCategory: 'def'.
	self assert: obj lastCategory equals: 'def'