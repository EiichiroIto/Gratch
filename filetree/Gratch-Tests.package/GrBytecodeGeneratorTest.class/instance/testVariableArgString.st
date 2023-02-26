test
testVariableArgString

	| g r |
	g := self newGenerator.
	g script: GrTestScript new.
	r := g variableArgString: 'a'.
	self assert: r isNil.
	self
		assertCollection: g code
		equals: { #pushShort. 5. 0. #getVar. #stop }.
	r := g variableArgString: 'notExistVariableName'.
	self assert: r equals: 0