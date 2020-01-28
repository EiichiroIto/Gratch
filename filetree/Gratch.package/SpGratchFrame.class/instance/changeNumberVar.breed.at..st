private
changeNumberVar: vno breed: bno at: id
	| val ret |
	val := self grWorld var: vno breed: bno at: id.
	ret := UIManager default
		request: 'Enter number'
		initialAnswer: val asString.
	ret ifNil: [ ^ self ].
	self grWorld
		var: vno
		breed: bno
		at: id
		put: ret asNumberNoError