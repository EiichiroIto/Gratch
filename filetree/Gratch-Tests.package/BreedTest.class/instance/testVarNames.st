test
testVarNames
	| ts l |
	ts := self newBreed.
	ts addVariable: 'a'.
	l := ts varNames.
	self assertCollection: l equals: #('a').
	ts addVariable: 'b'.
	l := ts varNames.
	self assertCollection: l equals: #('a' 'b').