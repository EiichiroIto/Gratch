test
testSetupScripts

	| app proj |
	app := self newApplication.
	proj := self newProject.
	self assert: proj graphScript isNil.
	self assert: proj nodesScript isNil.
	self assert: proj edgesScript isNil.
	proj setupScripts.
	self assert: proj graphScript class equals: GrGraphScript.
	self assert: proj nodesScript class equals: GrNodesScript.
	self assert: proj edgesScript class equals: GrEdgesScript