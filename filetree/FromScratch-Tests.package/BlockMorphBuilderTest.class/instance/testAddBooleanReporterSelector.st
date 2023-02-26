test
testAddBooleanReporterSelector

	| builder block |
	builder := self newBlockMorphBuilder.
	builder addBooleanReporter: 'abc' selector: #def.
	block := builder blockSpecAt: #def.
	self assert: block isBooleanReporter.
	self assert: block label equals: 'abc'