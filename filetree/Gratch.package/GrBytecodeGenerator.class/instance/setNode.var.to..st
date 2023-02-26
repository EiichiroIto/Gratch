variable ops
setNode: id var: var to: aNumber

	self
		setVar: (script project nodesScript varNoFor: var choice)
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]
		put: [ aNumber argString: parser ]