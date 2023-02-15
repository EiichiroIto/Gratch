test
testDraggingPoint

	| morph |
	morph := self newMorph.
	self assert: morph draggingPoint isNil.
	morph draggingPoint: 1 @ 2.
	self assert: morph draggingPoint equals: 1 @ 2.
	morph draggingPoint: 3 @ 4.
	self assert: morph draggingPoint equals: 3 @ 4