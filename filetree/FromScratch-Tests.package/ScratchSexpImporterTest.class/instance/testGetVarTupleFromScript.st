test
testGetVarTupleFromScript

	| i script ret |
	i := self newImporter.
	script := self newScript.
	ret := i getVarTupleFrom: #( getVar abc ) script: script.
	self assertCollection: ret equals: #( readVariable abc )