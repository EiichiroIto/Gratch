test
testPrintOn
	| ts |
	ts := self newNodes.
	self assert: ts asString equals: 'GrNodes2(0)'.
	ts create: 10.
	self assert: ts asString equals: 'GrNodes2(10)'.