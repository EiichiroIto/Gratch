test
testCountAlive
	| ts |
	ts := self newNodes.
	ts create: 10.
	self assert: ts countAlive equals: 10.
	ts killAt: 4.
	ts killAt: 8.
	self assert: ts countAlive equals: 8.