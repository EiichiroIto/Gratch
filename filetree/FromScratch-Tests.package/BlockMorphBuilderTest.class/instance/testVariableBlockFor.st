test
testVariableBlockFor

	| obj block script |
	script := self newScript.
	script setupBlockSpecs.
	obj := self newBlockMorphBuilder.
	obj script: script.
	block := obj variableBlockFor: 'abc'.
	self assert: (block isKindOf: VariableBlockMorph).
	self assert: block receiver identicalTo: script.
	self assert: block variable equals: 'abc'