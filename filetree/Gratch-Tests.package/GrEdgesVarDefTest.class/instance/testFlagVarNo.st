test
testFlagVarNo
	| v |
	v := self newVarDef.
	self assert: (v varNoFor: 'flag') equals: v class flagVarNo.