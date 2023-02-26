test
testAddEventHatBlockSelectorEventName

	| builder block |
	builder := self newBlockMorphBuilder.
	builder addEventHatBlock: 'abc' selector: #def eventName: 'ghi'.
	block := builder blockSpecAt: #def.
	self assert: block isEventHatBlock.
	self assert: block label equals: 'abc'.
	self assert: block selector equals: #def.
	self assertCollection: block arguments equals: #( 'ghi' )