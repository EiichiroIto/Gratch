color ops
setColor: color node: id
	bcGenerator
		setVar: GrNodesVarDef colorVarNo
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]
		put: [ color argString: parser ]