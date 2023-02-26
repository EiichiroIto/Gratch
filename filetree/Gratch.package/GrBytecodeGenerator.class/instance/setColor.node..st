color ops
setColor: color node: id

	self
		setVar: GrNodesVarDef colorVarNo
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]
		put: [ color argString: parser ]