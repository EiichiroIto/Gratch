test
testLivingOnesDo
	| ts |
	ts := self newNodes.
	ts clear.
	ts create: 5.
	self assert: ts countAlive equals: 5.
	ts livingOnesDo: [ :each | ts killAt: each ].
	self assert: ts countAlive equals: 0.