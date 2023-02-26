test
testStartBlockTupleFor

	| i ret |
	i := self newImporter.
	ret := i startBlockTupleFor: 'abc'.
	self assertCollection: ret equals: #( #abc )