test
testPrintOn
	| p |
	p := self newProgram.
	self assert: p asString equals: 'GrProgram(0)'.
	p privCodes: #(1 2 3).
	self assert: p asString equals: 'GrProgram(3)'.