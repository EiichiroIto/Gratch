test
testAddCBlockSelectorArguments

	| builder block |
	builder := self newBlockMorphBuilder.
	builder addCBlock: 'abc' selector: #def arguments: #( 1 2 ).
	block := builder blockSpecAt: #def.
	self assert: block isCBlock.
	self assert: block label equals: 'abc'.
	self assertCollection: block arguments equals: #( 1 2 )