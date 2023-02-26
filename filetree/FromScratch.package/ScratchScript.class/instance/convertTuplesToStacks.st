block building
convertTuplesToStacks

	| tuplesList stack |
	blocksBin isArray ifFalse: [ ^ self ].
	tuplesList := blocksBin.
	blocksBin := self newScriptsMorph
		             project: project;
		             yourself.
	tuplesList do: [ :pair | 
		stack := blockMorphBuilder stackFromTupleList: pair second.
		stack position: pair first.
		blocksBin addMorph: stack ]