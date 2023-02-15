private
stackFromTupleList: tupleList

	| stackTop previousBlock block |
	stackTop := previousBlock := nil.
	tupleList do: [ :tuple | 
		block := self blockFromTuple: tuple.
		previousBlock
			ifNil: [ stackTop := block ]
			ifNotNil: [ previousBlock nextBlock: block ].
		previousBlock := block ].
	^ stackTop