private
edgeLabelsAt: anInteger
	edgeLabels ifNil: [ ^ nil ].
	^ edgeLabels
		collect:
			[ :each | self stringOfVar: each breed: GrBreedId edgesBreedNo at: anInteger ]