color ops
getColorOfEdge: id
	^ generator
		getVar: GrEdgesVarDef colorVarNo
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]