private
setEdge: edge atColumn: column to: value
	(self ignoreEdgeColumns includes: column)
		ifTrue: [ ^ self ].
	column = 'node1'
		ifTrue: [ ^ grWorld n1At: edge put: (nodes at: value) ].
	column = 'node2'
		ifTrue: [ ^ grWorld n2At: edge put: (nodes at: value) ].
	column = 'color'
		ifTrue: [ ^ grWorld
				var: GrEdgesVarDef colorVarNo
				breed: GrBreedId edgesBreedNo
				at: edge
				put: (self parseColor: value) ].
	grWorld
		var: (grWorld varNoFor: column breed: GrBreedId edgesBreedNo)
		breed: GrBreedId edgesBreedNo
		at: edge
		put: value asNumberNoError