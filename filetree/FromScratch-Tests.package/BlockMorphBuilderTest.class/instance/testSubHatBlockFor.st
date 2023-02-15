test
testSubHatBlockFor

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj subHatBlockFor: 'abc'.
	self assert: (block isKindOf: SubHatMorph).
	self assert: block scriptOwner identicalTo: script.
	self assert: block subName equals: 'abc'