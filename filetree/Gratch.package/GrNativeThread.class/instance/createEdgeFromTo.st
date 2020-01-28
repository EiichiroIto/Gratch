basic ops
createEdgeFromTo
	| n1 n2 |
	n2 := self pop.
	n1 := self pop.
	grWorld createEdgeFrom: n1 to: n2