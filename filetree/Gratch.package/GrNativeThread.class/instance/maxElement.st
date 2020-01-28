sensing ops
maxElement
	| bno vno e |
	bno := self pop.
	vno := self pop.
	e := grWorld maxVar: vno breed: bno.
	self push: e