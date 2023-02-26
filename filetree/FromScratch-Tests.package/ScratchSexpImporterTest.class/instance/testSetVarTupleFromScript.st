test
testSetVarTupleFromScript

	| i script ret |
	i := self newImporter.
	script := self newScript.
	ret := i setVarTupleFrom: #(#setVar:to: life 1) script: script.
	self
		assertCollection: ret
		equals: #(changeVariable life #setVar:to: 1).
	ret := i setVarTupleFrom: #(#changeVar:by: energy -0.1) script: script.
	self
		assertCollection: ret
		equals: #(changeVariable energy #changeVar:by: -0.1)