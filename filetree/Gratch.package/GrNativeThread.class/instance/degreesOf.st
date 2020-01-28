sensing ops
degreesOf
	| node degrees |
	node := self pop.
	degrees := grWorld degreesAt: node.
	self push: degrees