sensing ops
edgeFromTo
	| from to n |
	to := self pop.
	from := self pop.
	n := grWorld connectedEdgeFrom: from to: to.
	self push: n