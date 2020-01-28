sensing ops
minElement
	| bno vno e |
	bno := self pop.
	vno := self pop.
	e := grWorld minVar: vno breed: bno.
	self push: e