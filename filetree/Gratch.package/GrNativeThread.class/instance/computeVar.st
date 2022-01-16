sensing ops
computeVar
	| cmd bno vno e |
	bno := self pop.
	vno := self pop.
	cmd := self pop.
	e := grWorld compute: cmd var: vno breed: bno.
	self push: e