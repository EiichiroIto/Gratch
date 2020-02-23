sensing ops
nodeWithMin: var
	| m v |
	m := script project nodes.
	v := var choice.
	^ generator
		minVar: (m varId varNoFor: v)
		breed: GrBreedId nodesBreedNo