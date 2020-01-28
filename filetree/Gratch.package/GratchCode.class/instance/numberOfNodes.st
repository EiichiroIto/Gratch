sensing ops
numberOfNodes
	^ bcGenerator
		getVar: [ GrGraphVarDef countAliveVarNo ]
		breedNo: GrBreedId graphBreedNo
		at: GrBreedId nodesBreedNo