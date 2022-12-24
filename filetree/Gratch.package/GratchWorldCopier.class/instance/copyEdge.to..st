private
copyEdge: fromId to: toId

	| bno tmp |
	bno := GrBreedId edgesBreedNo.
	tmp := from var: GrEdgesVarDef flagVarNo breed: bno at: fromId.
	to
		var: GrEdgesVarDef flagVarNo
		breed: bno
		at: toId
		put: tmp.
	tmp := from var: GrEdgesVarDef colorVarNo breed: bno at: fromId.
	to
		var: GrEdgesVarDef colorVarNo
		breed: bno
		at: toId
		put: tmp.
	tmp := from var: GrEdgesVarDef n1VarNo breed: bno at: fromId.
	tmp := self convertNode: tmp.
	to
		var: GrEdgesVarDef n1VarNo
		breed: bno
		at: toId
		put: tmp.
	tmp := from var: GrEdgesVarDef n2VarNo breed: bno at: fromId.
	tmp := self convertNode: tmp.
	to
		var: GrEdgesVarDef n2VarNo
		breed: bno
		at: toId
		put: tmp.
	fromVarIds with: toVarIds do: [ :fv :tv | 
		tmp := from var: fv breed: bno at: fromId.
		to
			var: tv
			breed: bno
			at: toId
			put: tmp ]