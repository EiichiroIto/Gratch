color ops
setColor: color edge: id

	self
		setVar: GrEdgesVarDef colorVarNo
		breedNo: GrBreedId edgesBreedNo
		at: [ id argString: parser ]
		put: [ color argString: parser ]