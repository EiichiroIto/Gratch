test
testUserDefinedVarNoAndNames
	| ts a b l |
	ts := self newBreed.
	a := ts addVariable: 'a'.
	l := ts userDefinedVarNoAndNames.
	self
		assertCollection: l asArray
		equals:
			{{a.
			'a'}}.
	b := ts addVariable: 'b'.
	l := ts userDefinedVarNoAndNames.
	self
		assertCollection: l asArray
		equals:
			{{a.
			'a'}.
			{b.
			'b'}}