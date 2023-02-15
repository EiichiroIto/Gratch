test
testUnknownBlockFor

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj unknownBlockFor: 'abc'.
	self assert: (block isKindOf: CommandBlockMorph).
	self assert: block receiver identicalTo: script.
	self assert: block selector equals: #unknown:.
	self assert: block args size equals: 1.
	self assert: block args first equals: 'abc'.
	self assert: block color equals: Color red