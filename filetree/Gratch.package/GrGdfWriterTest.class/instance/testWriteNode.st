test
testWriteNode
	| w g |
	g := self newWorld.
	w := self newWriter: g.
	w nodeColumns: #(x y color).
	g xAt: 1 put: 1.
	g yAt: 1 put: 2.
	g var: GrNodesVarDef colorVarNo breed: GrBreedId nodesBreedNo at: 1 put: ColorList green.
	w writeNode: 1.
	self assert: w privStream contents equals: '1.0,2.0,''0,255,0'''.