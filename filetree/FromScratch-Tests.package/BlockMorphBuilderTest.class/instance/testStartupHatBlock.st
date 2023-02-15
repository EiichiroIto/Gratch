test
testStartupHatBlock

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj startupHatBlock.
	self assert: (block isKindOf: EventHatMorph).
	self assert: block scriptOwner identicalTo: script.
	self assert: block eventName equals: 'startup'