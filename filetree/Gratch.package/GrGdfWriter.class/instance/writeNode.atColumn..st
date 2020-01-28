private
writeNode: node atColumn: column
	| vno |
	column = 'x'
		ifTrue: [ ^ self writeDouble: (grWorld xAt: node) ].
	column = 'y'
		ifTrue: [ ^ self writeDouble: (grWorld yAt: node) ].
	column = 'color'
		ifTrue: [ ^ self
				writeColor:
					(ColorList
						colorAt:
							(grWorld
								var: GrNodesVarDef colorVarNo
								breed: GrBreedId nodesBreedNo
								at: node)) ].
	column = 'label'
		ifTrue: [ ^ self
				writeString:
					(grWorld
						string: GrNodesVarDef nameVarNo
						breed: GrBreedId nodesBreedNo
						at: node) ].
	column = 'name'
		ifTrue: [ ^ self writeNodeLabel: node ].
	column = 'width'
		ifTrue: [ ^ self writeDouble: 4 ].
	column = 'height'
		ifTrue: [ ^ self writeDouble: 4 ].
	vno := grWorld varNoFor: column breed: GrBreedId nodesBreedNo.
	self
		writeDouble: (grWorld var: vno breed: GrBreedId nodesBreedNo at: node)