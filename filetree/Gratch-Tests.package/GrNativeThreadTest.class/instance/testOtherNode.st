test
testOtherNode
	| t w |
	w := self newWorld.
	w createNodes: 4.
	w pointAt: 1 put: 0 @ 0.
	w pointAt: 2 put: 1 @ 1.
	w pointAt: 3 put: 2 @ 2.
	w pointAt: 4 put: 4 @ 4.
	10
		timesRepeat: [ t := self newThread: w.
			t forBreedNo: GrBreedId nodesBreedNo index: 1.
			t otherNode.
			self assert: t stack size equals: 1.
			self assert: (#(2 3 4) includes: t stack first) ].
	10
		timesRepeat: [ t := self newThread: w.
			t forBreedNo: GrBreedId nodesBreedNo index: 2.
			t otherNode.
			self assert: t stack size equals: 1.
			self assert: (#(1 3 4) includes: t stack first) ].