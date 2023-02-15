test
testScrollPoint

	| morph |
	morph := self newMorph.
	self assert: morph scrollPoint isNil.
	morph scrollPoint: 1 @ 2.
	self assert: morph scrollPoint equals: 1 @ 2.
	morph scrollPoint: 3 @ 4.
	self assert: morph scrollPoint equals: 3 @ 4