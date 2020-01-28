sensing ops
nodeWithMin: var
	| m v |
	m := targetMorph project nodes.
	v := var choice.
	^ bcGenerator
		minVar: (m varId varNoFor: v)
		breed: GrBreedId nodesBreedNo