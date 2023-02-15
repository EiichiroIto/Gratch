adding
addBlockDefsTo: aSet

	| list |
	list := ScratchScript allSubclasses collect: [ :each | 
		        each new
			        setupBlockSpecs;
			        yourself ].
	ScratchTranslator addBlockDefs: list to: aSet