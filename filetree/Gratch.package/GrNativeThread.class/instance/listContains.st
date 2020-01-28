variable ops
listContains
	| vno val ret |
	val := self pop.
	vno := self pop.
	ret := grWorld
		var: vno
		breed: breedId
		list: id
		contains: val.
	self push: ret