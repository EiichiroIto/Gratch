test
testAddCommandSelectorArguments

	| builder block |
	builder := self newBlockMorphBuilder.
	builder addCommand: 'abc' selector: #def arguments: #( 1 2 ).
	block := builder blockSpecAt: #def.
	self assert: block isCommandBlock.
	self assert: block label equals: 'abc'.
	self assertCollection: block arguments equals: #( 1 2 )