test
testAsBlockTuple

	| obj |
	obj := self newMorph.
	obj selector: #abc.
	self assertCollection: obj asBlockTuple equals: #( abc )