variable ops
getNode: id var: var

	| v |
	v := var choice.
	^ self
		  getVar: (script project nodesScript varNoFor: v)
		  breedNo: GrBreedId nodesBreedNo
		  at: (id argString: parser)