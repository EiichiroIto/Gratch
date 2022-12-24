test
testNewProjectReadWriter

	| prj reader |
	prj := self newProject.
	reader := prj newProjectReadWriter.
	self assert: reader fileVersionTag equals: prj class fileVersionTag.
	self assert: reader fileVersion equals: prj class fileVersion.
	self assert: (reader objStream isKindOf: GrObjStream)