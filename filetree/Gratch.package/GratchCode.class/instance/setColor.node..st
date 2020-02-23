color ops
setColor: color node: id
	generator
		setVar: GrNodesVarDef colorVarNo
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]
		put: [ color argString: parser ]