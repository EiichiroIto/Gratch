test
testApplication
	| app proj |
	app := self newApplication.
	proj := self newProject.
	self assert: proj graph isNil.
	self assert: proj nodes isNil.
	self assert: proj edges isNil.
	proj application: app.
	self assert: proj graph class equals: GrGraphScript.
	self assert: proj nodes class equals: GrNodesScript.
	self assert: proj edges class equals: GrEdgesScript