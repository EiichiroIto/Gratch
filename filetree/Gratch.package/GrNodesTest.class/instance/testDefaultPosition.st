test
testDefaultPosition
	| ts |
	ts := self newNodes.
	self assert: ts defaultPosition equals: 0 @ 0.
	ts defaultPosition: 10 @ 20.
	self assert: ts defaultPosition equals: 10 @ 20.