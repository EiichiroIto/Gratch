test
testAddStartHatBlockSelector

	| builder block |
	builder := self newBlockMorphBuilder.
	builder addStartHatBlock: 'abc' selector: #def.
	block := builder blockSpecAt: #def.
	self assert: block isStartHatBlock.
	self assert: block label equals: 'abc'.
	self assert: block selector equals: #def.
	self assert: block arguments isEmpty