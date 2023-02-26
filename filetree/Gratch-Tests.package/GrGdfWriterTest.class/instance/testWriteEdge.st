test
testWriteEdge
	| w g |
	g := self newWorld.
	g createNodes: 2.
	g xAt: 1 put: 1.
	g yAt: 1 put: 2.
	g xAt: 2 put: 3.
	g yAt: 2 put: 4.
	g createEdges: 1.
	g n1At: 1 put: 1.
	g n2At: 1 put: 2.
	g var: GrEdgesVarDef colorVarNo breed: GrBreedId edgesBreedNo at: 1 put: ColorList blue.
	w := self newWriter: g.
	w edgeColumns: #(node1 node2 color).
	w writeEdge: 1.
	self assert: w stream contents equals: 's1,s2,''0,0,255'''.