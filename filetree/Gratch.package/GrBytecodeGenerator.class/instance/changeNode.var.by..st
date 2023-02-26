variable ops
changeNode: id var: var by: aNumber

	| v |
	v := var choice.
	self
		changeVar: (script project nodesScript varNoFor: v)
		breedNo: GrBreedId nodesBreedNo
		at: [ id argString: parser ]
		by: [ aNumber argString: parser ]