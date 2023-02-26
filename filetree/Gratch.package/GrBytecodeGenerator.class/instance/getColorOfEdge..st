color ops
getColorOfEdge: id

	^ self
		  getVar: GrEdgesVarDef colorVarNo
		  breedNo: GrBreedId edgesBreedNo
		  at: (id argString: parser)