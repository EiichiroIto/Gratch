color ops
setColor: color edge: id
	generator
		setVar: GrEdgesVarDef colorVarNo
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]
		put: [ color argString: parser ]