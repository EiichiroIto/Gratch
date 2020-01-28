test
testEdges
	| w |
	w := self newWorld.
	self assert: w edges class equals: GrEdges.