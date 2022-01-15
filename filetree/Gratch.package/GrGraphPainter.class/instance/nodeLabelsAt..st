private
nodeLabelsAt: anInteger
	nodeLabels ifNil: [ ^ nil ].
	^ nodeLabels
		collect:
			[ :each | self stringOfVar: each breed: GrBreedId nodesBreedNo at: anInteger ]