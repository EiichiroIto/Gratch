color ops
getColorOfNode: id
	^ bcGenerator
		getVar: [ GrNodesVarDef colorVarNo ]
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]