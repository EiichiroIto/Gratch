test
testSetupEdgeVarDefFrom
	| r w |
	r := self newReader.
	w := self newWorld.
	self deny: (w edges userDefinedVarNames includes: 'a').
	r privGrWorld: w.
	r
		setupEdgeVarDefFrom:
			{{'node1' . 'VARCHAR'}.
			{'node2' . 'VARCHAR'}.
			{'directed' . 'BOOLEAN'}.
			{'label' . 'VARCHAR'}.
			{'color' . 'VARCHAR'}.
			{'a' . 'DOUBLE'}}.
	self assert: (w edges userDefinedVarNames includes: 'a')