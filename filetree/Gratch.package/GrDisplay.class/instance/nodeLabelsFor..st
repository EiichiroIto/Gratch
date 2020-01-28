private
nodeLabelsFor: node
	^ nodeLabels
		collect:
			[ :each | self stringOfVar: each breed: GrBreedId nodesBreedNo at: node ]