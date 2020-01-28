variable ops
setElementsTo
	| vno cno arg |
	vno := self pop.
	cno := self pop.
	arg := self pop.
	grWorld
		var: vno
		breed: breedId
		list: id
		setCommand: cno
		arg: arg