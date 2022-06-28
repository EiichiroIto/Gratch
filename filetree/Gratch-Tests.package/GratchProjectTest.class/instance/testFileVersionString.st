test
testFileVersionString
	| p |
	p := self newProject.
	self assert: p class fileVersionString equals: 'GratchV02'