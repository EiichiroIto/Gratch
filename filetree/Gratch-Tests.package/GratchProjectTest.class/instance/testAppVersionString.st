test
testAppVersionString
	| p |
	p := self newProject.
	self assert: p class appVersionString equals: 'GratchV02'