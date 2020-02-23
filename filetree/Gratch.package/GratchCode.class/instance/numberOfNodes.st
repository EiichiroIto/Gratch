sensing ops
numberOfNodes
	^ generator
		getVar: [ GrGraphVarDef countAliveVarNo ]
		breedNo: GrBreedId graphBreedNo
		at: GrBreedId nodesBreedNo