test
testFileVersionString

	| obj |
	obj := self newProject newProjectReadWriter.
	self assert: obj fileVersionString equals: 'GratchV02'