test
testNodesScript

	| proj |
	proj := self newProject.
	self assert: proj nodesScript isNil