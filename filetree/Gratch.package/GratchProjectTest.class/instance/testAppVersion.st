test
testAppVersion
	| p |
	p := self newProject.
	self assert: p appVersion equals: 'GratchV01'