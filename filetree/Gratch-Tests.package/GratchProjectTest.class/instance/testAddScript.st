test
testAddScript
	| proj |
	proj := self newProject.
	self assert: proj scripts isEmpty.
	proj addScript: #a.
	proj addScript: #b.
	self assertCollection: proj scripts equals: #(a b)