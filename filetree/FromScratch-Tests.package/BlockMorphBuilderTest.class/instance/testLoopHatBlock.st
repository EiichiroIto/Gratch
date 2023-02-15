test
testLoopHatBlock

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj loopHatBlock.
	self assert: (block isKindOf: EventHatMorph).
	self assert: block scriptOwner identicalTo: script.
	self assert: block eventName equals: 'loop'