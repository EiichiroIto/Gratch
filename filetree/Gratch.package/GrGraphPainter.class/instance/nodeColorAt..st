private
nodeColorAt: anInteger
	| c |
	c := ColorList
		colorAt:
			(grWorld
				var: GrNodesVarDef colorVarNo
				breed: GrBreedId nodesBreedNo
				at: anInteger).
	^ c = bgColor
		ifTrue: [ c negated ]
		ifFalse: [ c ]