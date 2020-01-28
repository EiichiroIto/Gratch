test
testAddNodeWith
	| r w |
	r := self newReader.
	w := self newWorld.
	r privGrWorld: w.
	self assert: r privNodes isEmpty.
	r
		addNodeWith:
			{{{'name'} . 'a'}.
			{{'x'} . 2}.
			{{'y'} . 3}}.
	self assert: (r privNodes at: 'a') equals: 1.
	self assert: (w xAt: 1) equals: 2.
	self assert: (w yAt: 1) equals: 3