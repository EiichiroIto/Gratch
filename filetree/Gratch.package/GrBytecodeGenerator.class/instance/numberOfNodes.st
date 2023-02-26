sensing ops
numberOfNodes

	^ self
		  getVar: GrGraphVarDef countAliveVarNo
		  breedNo: GrBreedId graphBreedNo
		  at: GrBreedId nodesBreedNo