variable ops
getEdge: id var: var

	| v |
	v := var choice.
	^ self
		  getVar: (script project edgesScript varNoFor: v)
		  breedNo: GrBreedId edgesBreedNo
		  at: (id argString: parser)