private
writeEdge: edge atColumn: column
	| vno |
	column = 'node1'
		ifTrue: [ ^ self writeNodeLabel: (grWorld n1At: edge) ].
	column = 'node2'
		ifTrue: [ ^ self writeNodeLabel: (grWorld n2At: edge) ].
	column = 'color'
		ifTrue: [ ^ self
				writeColor:
					(ColorList
						colorAt:
							(grWorld
								var: GrEdgesVarDef colorVarNo
								breed: GrBreedId edgesBreedNo
								at: edge)) ].
	column = 'label'
		ifTrue: [ ^ self writeString: '' ].
	column = 'directed'
		ifTrue: [ ^ self writeBoolean: false ].
	vno := grWorld varNoFor: column breed: GrBreedId edgesBreedNo.
	self
		writeDouble: (grWorld var: vno breed: GrBreedId edgesBreedNo at: edge)