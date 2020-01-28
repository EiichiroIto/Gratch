test
testGetBreedVar
	| w t v |
	w := self newWorld.
	t := self newThread: w.
	w createNodes: 2.
	w createEdges: 1.
	w n1At: 1 put: 1.
	w n2At: 1 put: 2.
	v := w edges addVariable: 'a'.
	t push: 1.
	t push: v.
	t push: GrBreedId edgesBreedNo.
	t getBreedVar.
	self assert: t pop equals: 0.
	w var: v breed: GrBreedId edgesBreedNo at: 1 put: 2.
	t push: 1.
	t push: v.
	t push: GrBreedId edgesBreedNo.
	t getBreedVar.
	self assert: t pop equals: 2