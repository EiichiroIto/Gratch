test
testVarNoFor
	| s |
	s := GrNodes new.
	self assert: (s varNoFor: 'color') equals: GrNodesVarDef colorVarNo.
	self assert: (s varNoFor: 'x') equals: GrNodesVarDef xVarNo.
	self assert: (s varNoFor: 'y') equals: GrNodesVarDef yVarNo.