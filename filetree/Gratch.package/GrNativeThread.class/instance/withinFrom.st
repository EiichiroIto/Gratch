sensing ops
withinFrom
	| r n x |
	r := self pop.
	n := self pop.
	x := grWorld withinRadius: r from: n.
	self push: x