test
testLivingElements
	| ts |
	ts := self newNodes.
	ts create: 5.
	self assertCollection: ts livingOnes equals: #(1 2 3 4 5).
	ts killAt: 2.
	ts killAt: 5.
	self assertCollection: ts livingOnes equals: #(1 3 4).