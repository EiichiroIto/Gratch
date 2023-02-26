color ops
getColorOfNode: id

	^ self
		  getVar: [ GrNodesVarDef colorVarNo ]
		  breedNo: GrBreedId nodesBreedNo
		  at: (id argString: parser)