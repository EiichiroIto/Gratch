private
importSub: aCollection for: aScript subName: aString
	| block prev tuple top |
	prev := aScript blocksBin.
	tuple := self subBlockTupleFor: aString.
	top := block := aScript hatBlockFromTuple: tuple.
	prev addMorph: block.
	prev := block.
	aCollection
		do: [ :each | 
			tuple := self tupleFrom: each.
			block := aScript blockFromTuple: tuple.
			prev nextBlock: block.
			prev := block ].
	^ top