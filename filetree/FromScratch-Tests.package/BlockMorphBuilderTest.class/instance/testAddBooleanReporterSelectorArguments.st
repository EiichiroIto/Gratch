test
testAddBooleanReporterSelectorArguments

	| builder block |
	builder := self newBlockMorphBuilder.
	builder addBooleanReporter: 'abc' selector: #def arguments: #( 1 2 ).
	block := builder blockSpecAt: #def.
	self assert: block isBooleanReporter.
	self assert: block label equals: 'abc'.
	self assertCollection: block arguments equals: #( 1 2 )