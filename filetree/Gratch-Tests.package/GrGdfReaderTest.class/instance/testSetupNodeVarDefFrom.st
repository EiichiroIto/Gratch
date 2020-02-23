test
testSetupNodeVarDefFrom
	| r w |
	r := self newReader.
	w := self newWorld.
	self deny: (w nodes userDefinedVarNames includes: 'a').
	r privGrWorld: w.
	r
		setupNodeVarDefFrom:
			{{'name' . 'VARCHAR'}.
			{'label' . 'VARCHAR'}.
			{'width' . 'DOUBLE'}.
			{'height' . 'DOUBLE'}.
			{'x' . 'DOUBLE'}.
			{'y' . 'DOUBLE'}.
			{'color' . 'VARCHAR'}.
			{'a' . 'DOUBLE'}}.
	self assert: (w nodes userDefinedVarNames includes: 'a')