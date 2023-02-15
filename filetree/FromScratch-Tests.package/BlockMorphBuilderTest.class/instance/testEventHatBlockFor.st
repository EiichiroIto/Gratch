test
testEventHatBlockFor

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj eventHatBlockFor: 'abc'.
	self assert: (block isKindOf: EventHatMorph).
	self assert: block scriptOwner identicalTo: script.
	self assert: block eventName equals: 'abc'