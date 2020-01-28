test
testInfo
	| proj |
	proj := self newProject.
	self assert: proj info isEmpty.
	proj info at: #a put: 1.
	proj info at: #b put: 2.
	self assert: (proj info at: #a) equals: 1.
	self assert: (proj info at: #b) equals: 2