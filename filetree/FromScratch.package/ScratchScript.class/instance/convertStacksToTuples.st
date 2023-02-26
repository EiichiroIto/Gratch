block building
convertStacksToTuples

	"Convert my blocks bin from a morph containing block stack into a collection of (<point>, <tuple>) pairs the represent the same stacks in compact, language-independent form."

	blocksBin isArray ifTrue: [ ^ self ].
	blocksBin := self blockMorphsForWriting collect: [ :blockM | 
		             Array
			             with: blockM position - blocksBin position
			             with: blockM tupleSequence ]