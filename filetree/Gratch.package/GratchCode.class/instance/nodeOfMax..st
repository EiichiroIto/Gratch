sensing ops
nodeOfMax: var
	| m v |
	m := targetMorph project nodes.
	v := var choice.
	^ bcGenerator
		maxVar: (m varId varNoFor: v)
		breed: GrBreedId nodesBreedNo