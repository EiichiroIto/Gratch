test
testAsBlockTuple

	| obj |
	obj := self newMorph.
	obj selector: #event:.
	obj eventName: 'abc'.
	self assertCollection: obj asBlockTuple equals: #( #event: 'abc' )