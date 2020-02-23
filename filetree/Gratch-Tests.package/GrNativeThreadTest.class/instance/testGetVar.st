test
testGetVar
	| w t v |
	w := self newWorld.
	w createNodes: 1.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	v := w nodes addVariable: 'b'.
	t push: v.
	t getVar.
	self assert: t pop equals: 0.
	w
		var: v
		breed: GrBreedId nodesBreedNo
		at: 1
		put: 10.
	t push: v.
	t getVar.
	self assert: t pop equals: 10