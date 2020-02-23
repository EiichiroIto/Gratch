test
testPointsAndColorOfEdges
	| w nodes edges list |
	w := self newWorld.
	nodes := w createNodes: 3.
	edges := w createEdges: 3.
	w xAt: nodes first put: 1.
	w yAt: nodes first put: 2.
	w xAt: nodes second put: 3.
	w yAt: nodes second put: 4.
	w xAt: nodes third put: 5.
	w yAt: nodes third put: 6.
	w n1At: edges first put: 1.
	w n2At: edges first put: 2.
	w
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: edges first
		put: ColorList black.
	w n1At: edges second put: 2.
	w n2At: edges second put: 3.
	w
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: edges second
		put: ColorList white.
	w n1At: edges third put: 3.
	w n2At: edges third put: 1.
	w
		var: GrEdgesVarDef colorVarNo
		breed: GrBreedId edgesBreedNo
		at: edges third
		put: ColorList red.
	list := w pointsAndColorOfEdges: #(1 2 3).
	self assert: list size equals: 3.
	self
		assertCollection: list first
		equals:
			{(1.0 @ 2.0).
			(3.0 @ 4.0).
			ColorList black}.
	self
		assertCollection: list second
		equals:
			{(3.0 @ 4.0).
			(5.0 @ 6.0).
			ColorList white}.
	self
		assertCollection: list third
		equals:
			{(5.0 @ 6.0).
			(1.0 @ 2.0).
			ColorList red}