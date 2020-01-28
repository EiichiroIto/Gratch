test
testWriteEdgeAtColumn
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
	w writeEdge: 1 atColumn: 'node1'.
	self assert: w privStream contents equals: 's1'.
	w := self newWriter: g.
	w writeEdge: 1 atColumn: 'node2'.
	self assert: w privStream contents equals: 's2'.
	w := self newWriter: g.
	w writeEdge: 1 atColumn: 'color'.
	self assert: w privStream contents equals: '''0,0,255'''.