sensing ops
nearestFrom
	| n x |
	n := self pop.
	x := grWorld nearestNodeFrom: n.
	self push: x