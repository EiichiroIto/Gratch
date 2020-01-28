test
testNodes
	| w |
	w := self newWorld.
	self assert: w nodes class equals: GrNodes.