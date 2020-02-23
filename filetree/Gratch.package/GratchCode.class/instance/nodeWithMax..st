sensing ops
nodeWithMax: var
	| m v |
	m := script project nodes.
	v := var choice.
	^ generator
		maxVar: (m varId varNoFor: v)
		breed: GrBreedId nodesBreedNo