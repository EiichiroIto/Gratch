test
testGraphScript

	| proj |
	proj := self newProject.
	self assert: proj graphScript isNil