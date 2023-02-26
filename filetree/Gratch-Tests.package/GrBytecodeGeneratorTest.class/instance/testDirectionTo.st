test
testDirectionTo
	| w t b r |
	w := self newWorld.
	w createNodes: 1.
	w pointAt: 1 put: 0 @ 0.
	w pointAt: 2 put: 2 @ 1.
	w pointAt: 3 put: 1 @ 0.
	b := self newGenerator.
	r := b directionTo: (self literalValue: 2).
	self assert: r isNil.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 1.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r closeTo: 0.5 arcTan radiansToDegrees.
	t := self newThread: w.
	t forBreedNo: GrBreedId nodesBreedNo index: 3.
	t codes: b code.
	r := t evaluate: 1.
	self assert: r closeTo: 1 arcTan radiansToDegrees.