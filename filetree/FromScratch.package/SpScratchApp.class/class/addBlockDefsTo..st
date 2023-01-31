adding
addBlockDefsTo: aSet

	| list |
	list := ScratchScript allSubclasses collect: [ :each | each new ].
	ScratchTranslator addBlockDefs: list to: aSet