sensing ops
edgeWithMax: var
	| m v |
	m := script project edges.
	v := var choice.
	^ generator
		maxVar: (m varId varNoFor: v)
		breed: GrBreedId edgesBreedNo