variable ops
deleteLineOfList
	| vno index |
	index := self pop.
	vno := self pop.
	grWorld
		var: vno
		breed: breedId
		list: id
		remove: index