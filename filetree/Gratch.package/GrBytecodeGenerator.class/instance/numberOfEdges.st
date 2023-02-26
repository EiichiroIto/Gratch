sensing ops
numberOfEdges

	^ self
		  getVar: GrGraphVarDef countAliveVarNo
		  breedNo: GrBreedId graphBreedNo
		  at: GrBreedId edgesBreedNo