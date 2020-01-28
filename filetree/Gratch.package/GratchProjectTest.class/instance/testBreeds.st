test
testBreeds
	| app proj |
	app := self newApplication.
	proj := self newProject.
	self assert: proj breeds isEmpty.
	proj application: app.
	self assert: proj breeds size equals: 3.
	self assert: proj breeds first class equals: GrGraph.
	self assert: proj breeds second class equals: GrNodes.
	self assert: proj breeds third class equals: GrEdges