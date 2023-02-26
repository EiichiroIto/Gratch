test
testSetBreedVarTo
	| w t v |
	w := self newWorld.
	t := self newThread: w.
	w createNodes: 4.
	v := w nodes addVariable: 'a'.
	self assert: (w nodes variables var: v at: 1) equals: 0.
	self assert: t stack size equals: 0.
	t push: 1.
	t push: 2.
	t push: v.
	t push: GrBreedId nodesBreedNo.
	t setBreedVarTo.
	self assert: (w nodes variables var: v at: 1) equals: 2.
	self assert: t stack size equals: 0.
	t push: 1.
	t push: 3.
	t push: v.
	t push: GrBreedId nodesBreedNo.
	t setBreedVarTo.
	self assert: (w nodes variables var: v at: 1) equals: 3.
	self assert: t stack size equals: 0.