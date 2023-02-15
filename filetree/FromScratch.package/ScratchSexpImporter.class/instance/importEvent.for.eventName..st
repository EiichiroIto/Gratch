private
importEvent: aCollection for: aScript eventName: aString
	| block prev tuple top |
	prev := aScript blocksBin.
	tuple := self eventBlockTupleFor: aString.
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