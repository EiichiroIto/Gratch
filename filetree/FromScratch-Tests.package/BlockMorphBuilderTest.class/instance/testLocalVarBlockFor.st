test
testLocalVarBlockFor

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj localVarBlockFor: 'abc'.
	self assert: (block isKindOf: LocalVarBlockMorph).
	self assert: block receiver identicalTo: script.
	self assert: block variable equals: 'abc'