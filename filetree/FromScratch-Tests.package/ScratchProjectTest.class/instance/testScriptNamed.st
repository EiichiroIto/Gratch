test
testScriptNamed

	| project sc1 sc2 r |
	project := self newProject.
	sc1 := ScTestScript new.
	sc2 := ScTestScript new.
	sc1 objName: 'abc'.
	sc2 objName: 'def'.
	project addScript: sc1.
	project addScript: sc2.
	r := project scriptNamed: 'abc'.
	self assert: r identicalTo: sc1.
	r := project scriptNamed: 'def'.
	self assert: r identicalTo: sc2.
	r := project scriptNamed: 'ghi'.
	self assert: r isNil