sensing ops
numberOfEdges
	^ bcGenerator
		getVar: [ GrGraphVarDef countAliveVarNo ]
		breedNo: GrBreedId graphBreedNo
		at: GrBreedId edgesBreedNo