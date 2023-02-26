test
testAddReporterSelector

	| builder block |
	builder := self newBlockMorphBuilder.
	builder addReporter: 'abc' selector: #def.
	block := builder blockSpecAt: #def.
	self assert: block isReporterBlock.
	self assert: block label equals: 'abc'