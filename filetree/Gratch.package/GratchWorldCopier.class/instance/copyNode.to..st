private
copyNode: fromId to: toId

	| bno tmp |
	bno := GrBreedId nodesBreedNo.
	1 to: from nodes varDef reservedNo do: [ :each | 
		tmp := from var: each breed: bno at: fromId.
		to var: each breed: bno at: toId put: tmp ].
	fromVarIds with: toVarIds do: [ :fv :tv | 
		tmp := from var: fv breed: bno at: fromId.
		to var: tv breed: bno at: toId put: tmp ]