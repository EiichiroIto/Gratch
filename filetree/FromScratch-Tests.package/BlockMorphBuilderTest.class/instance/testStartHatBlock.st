test
testStartHatBlock

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj startHatBlock.
	self assert: (block isKindOf: EventHatMorph).
	self assert: block scriptOwner identicalTo: script.
	self assert: block eventName equals: 'start'