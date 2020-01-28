variable ops
lineCountOfList
	| vno ret |
	vno := self pop.
	ret := grWorld
		var: vno
		breed: breedId
		listSizeOf: id.
	self push: ret