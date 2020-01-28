variable ops
getBreedVar
	| var index bno ret |
	bno := self pop.
	var := self pop.
	index := self pop.
	ret := grWorld var: var breed: bno at: index.
	self push: ret.