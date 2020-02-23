color ops
getColorOfNode: id
	^ generator
		getVar: [ GrNodesVarDef colorVarNo ]
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]