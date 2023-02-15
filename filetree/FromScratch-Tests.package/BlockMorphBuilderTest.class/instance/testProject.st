test
testProject

	| obj s p |
	obj := self newBlockMorphBuilder.
	s := self newScript.
	obj script: s.
	self assert: obj project isNil.
	p := self newProject.
	s project: p.
	self assert: obj project identicalTo: p