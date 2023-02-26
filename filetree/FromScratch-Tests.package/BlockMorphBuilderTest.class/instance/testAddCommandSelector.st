test
testAddCommandSelector

	| builder block |
	builder := self newBlockMorphBuilder.
	builder addCommand: 'abc' selector: #def.
	block := builder blockSpecAt: #def.
	self assert: block isCommandBlock.
	self assert: block label equals: 'abc'