sensing ops
computeStatusOf
	| cmd ret |
	cmd := self pop.
	ret := grWorld computeStatusOf: cmd.
	self push: ret