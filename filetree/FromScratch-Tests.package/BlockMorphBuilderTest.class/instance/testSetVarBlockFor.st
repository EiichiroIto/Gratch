test
testSetVarBlockFor

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj setVarBlockFor: 'abc'.
	self assert: (block isKindOf: SetterBlockMorph).
	self assert: block selector equals: #setVar:to:.
	self assert: block receiver identicalTo: script.
	self assert: block variable equals: 'abc'.
	self assert: block color equals: obj unknownCategoryColor