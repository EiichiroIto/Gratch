test
testSetNodeAtColumnTo
	| r w |
	r := self newReader.
	w := self newWorld.
	r grWorld: w.
	r setNode: 1 atColumn: 'x' to: 10.
	r setNode: 2 atColumn: 'y' to: 20.
	self assert: (w xAt: 1) equals: 10.
	self assert: (w yAt: 2) equals: 20