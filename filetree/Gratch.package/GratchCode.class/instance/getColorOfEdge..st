color ops
getColorOfEdge: id
	^ bcGenerator
		getVar: GrEdgesVarDef colorVarNo
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]