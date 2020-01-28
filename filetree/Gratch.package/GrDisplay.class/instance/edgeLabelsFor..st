private
edgeLabelsFor: edge
	^ edgeLabels
		collect:
			[ :each | self stringOfVar: each breed: GrBreedId edgesBreedNo at: edge ]