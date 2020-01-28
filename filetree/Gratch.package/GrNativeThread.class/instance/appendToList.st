variable ops
appendToList
	| vno val |
	val := self pop.
	vno := self pop.
	grWorld
		var: vno
		breed: breedId
		list: id
		add: val