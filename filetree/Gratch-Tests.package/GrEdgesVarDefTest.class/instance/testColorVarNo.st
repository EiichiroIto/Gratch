test
testColorVarNo
	| v |
	v := self newVarDef.
	self assert: (v varNoFor: 'color') equals: v class colorVarNo.