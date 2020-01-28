private
setNode: node atColumn: column to: value
	(self ignoreNodeColumns includes: column)
		ifTrue: [ ^ self ].
	column = 'name'
		ifTrue: [ ^ nodes at: value put: node ].
	column = 'x'
		ifTrue: [ ^ grWorld xAt: node put: value asNumber ].
	column = 'y'
		ifTrue: [ ^ grWorld yAt: node put: value asNumber ].
	column = 'label'
		ifTrue: [ ^ grWorld
				string: GrNodesVarDef nameVarNo
				breed: GrBreedId nodesBreedNo
				at: node
				put: value ].
	column = 'color'
		ifTrue: [ ^ grWorld
				var: GrNodesVarDef colorVarNo
				breed: GrBreedId nodesBreedNo
				at: node
				put: (self parseColor: value) ].
	grWorld
		var: (grWorld varNoFor: column breed: GrBreedId nodesBreedNo)
		breed: GrBreedId nodesBreedNo
		at: node
		put: value asNumberNoError