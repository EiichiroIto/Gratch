sensing ops
numberOfEdges
	^ generator
		getVar: [ GrGraphVarDef countAliveVarNo ]
		breedNo: GrBreedId graphBreedNo
		at: GrBreedId edgesBreedNo