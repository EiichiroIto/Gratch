test
testInitialize
	| proj |
	proj := self newProject.
	self assert: proj info isDictionary.
	self assert: proj info isEmpty.
	self assert: proj scripts isArray.
	self assert: proj scripts isEmpty