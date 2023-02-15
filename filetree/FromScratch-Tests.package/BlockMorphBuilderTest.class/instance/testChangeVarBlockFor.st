test
testChangeVarBlockFor

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj changeVarBlockFor: 'abc'.
	self assert: (block isKindOf: SetterBlockMorph).
	self assert: block selector equals: #changeVar:by:.
	self assert: block receiver identicalTo: script.
	self assert: block variable equals: 'abc'.
	self assert: block color equals: obj unknownCategoryColor