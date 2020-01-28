sensing ops
xyOf
	| pno x y |
	pno := self pop.
	x := grWorld xAt: pno.
	y := grWorld yAt: pno.
	self push: x.
	self push: y.