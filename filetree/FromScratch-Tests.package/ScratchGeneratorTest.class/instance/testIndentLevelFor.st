test
testIndentLevelFor

	| morph |
	morph := HatBlockMorph new.
	self assert: (self newGenerator indentLevelFor: morph) equals: 0.
	morph := CommandBlockMorph new.
	self assert: (self newGenerator indentLevelFor: 100) equals: 0