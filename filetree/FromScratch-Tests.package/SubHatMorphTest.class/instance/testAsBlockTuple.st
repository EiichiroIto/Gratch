test
testAsBlockTuple

	| obj |
	obj := self newMorph.
	obj selector: #abc:.
	obj subName: 'def'.
	self assertCollection: obj asBlockTuple equals: #( abc: 'def' )