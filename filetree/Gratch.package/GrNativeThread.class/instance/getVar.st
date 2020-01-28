variable ops
getVar
	| var ret |
	var := self pop.
	ret := grWorld var: var breed: breedId at: id.
	self push: ret.