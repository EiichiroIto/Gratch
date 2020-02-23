test
testAuthor
	| proj |
	proj := self newProject.
	self assert: proj author isEmpty.
	proj author: 'abc'.
	self assert: proj author equals: 'abc'.
	proj author: 'def'.
	self assert: proj author equals: 'def'