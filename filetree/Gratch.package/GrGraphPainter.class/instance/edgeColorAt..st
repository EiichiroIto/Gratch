private
edgeColorAt: anInteger
	| c |
	c := ColorList
		colorAt:
			(grWorld
				var: GrEdgesVarDef colorVarNo
				breed: GrBreedId edgesBreedNo
				at: anInteger).
	^ c = bgColor
		ifTrue: [ c negated ]
		ifFalse: [ c ]