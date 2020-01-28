test
testUserDefinedVarNames
	| ts l |
	ts := self newBreed.
	ts addVariable: 'a'.
	l := ts userDefinedVarNames.
	self assertCollection: l asArray equals: #('a').
	ts addVariable: 'b'.
	l := ts userDefinedVarNames.
	self assertCollection: l asArray equals: #('a' 'b').