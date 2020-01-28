test
testPrintOn
	| ts |
	ts := self newNodes.
	self assert: ts asString equals: 'GrNodes2(0)'.