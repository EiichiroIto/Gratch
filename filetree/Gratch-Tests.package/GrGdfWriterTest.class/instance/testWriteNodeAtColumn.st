test
testWriteNodeAtColumn
	| w g |
	g := self newWorld.
	g xAt: 1 put: 1.
	g yAt: 1 put: 2.
	g var: GrNodesVarDef colorVarNo breed: GrBreedId nodesBreedNo at: 1 put: ColorList green.
	w := self newWriter: g.
	w writeNode: 1 atColumn: 'x'.
	self assert: w stream contents equals: '1.0'.
	w := self newWriter: g.
	w writeNode: 1 atColumn: 'y'.
	self assert: w stream contents equals: '2.0'.
	w := self newWriter: g.
	w writeNode: 1 atColumn: 'color'.
	self assert: w stream contents equals: '''0,255,0'''.