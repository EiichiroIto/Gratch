test
testDefaultValue

	| morph |
	morph := self newArgMorph.
	self assert: morph selectedScript isNil.
	morph defaultValue: 'abc'.
	self assert: morph selectedScript equals: 'abc'