test
testScriptNames

	| project sc1 sc2 r |
	project := self newProject.
	sc1 := ScTestScript new.
	sc2 := ScTestScript new.
	sc1 objName: 'abc'.
	sc2 objName: 'def'.
	project addScript: sc1.
	project addScript: sc2.
	r := project scriptNames.
	self assertCollection: r equals: #( abc def )