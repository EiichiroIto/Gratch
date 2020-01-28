test
testPointAndColorOfNodes
	| w nodes list |
	w := self newWorld.
	nodes := w createNodes: 3.
	w xAt: nodes first put: 1.
	w yAt: nodes first put: 2.
	w var: GrNodesVarDef colorVarNo breed: GrBreedId nodesBreedNo at: nodes first put: ColorList black.
	w xAt: nodes second put: 3.
	w yAt: nodes second put: 4.
	w var: GrNodesVarDef colorVarNo breed: GrBreedId nodesBreedNo at: nodes second put: ColorList white.
	w xAt: nodes third put: 5.
	w yAt: nodes third put: 6.
	w var: GrNodesVarDef colorVarNo breed: GrBreedId nodesBreedNo at: nodes third put: ColorList red.
	list := w pointAndColorOfNodes: #(1 2 3).
	self assert: list size equals: 3.
	self
		assertCollection: list first
		equals:
			{(1 @ 2).
			ColorList black}.
	self
		assertCollection: list second
		equals:
			{(3 @ 4).
			ColorList white}.
	self
		assertCollection: list third
		equals:
			{(5 @ 6).
			ColorList red}