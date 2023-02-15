test
testBlockColorFor

	| obj |
	obj := self newBlockMorphBuilder.
	obj setCategory: 'abc' color: Color white.
	obj setCategory: 'def' color: Color black.
	self assert: (obj blockColorFor: 'abc') equals: Color white.
	self assert: (obj blockColorFor: 'def') equals: Color black.
	self assert: (obj blockColorFor: 'ghi') equals: Color gray