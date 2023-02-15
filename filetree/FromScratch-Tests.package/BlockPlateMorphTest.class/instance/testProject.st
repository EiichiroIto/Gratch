test
testProject

	| morph project |
	morph := self newMorph.
	self assert: morph project isNil.
	project := ScratchProject new.
	morph project: project.
	self assert: morph project identicalTo: project