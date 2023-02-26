inspecting
changeNumberVar: vno breed: bno at: id

	| val ret |
	val := self grWorld var: vno breed: bno at: id.
	ret := self
		       request: 'Enter number' localized
		       initialAnswer: val asString.
	ret ifNil: [ ^ self ].
	self grWorld
		var: vno
		breed: bno
		at: id
		put: ret asNumberNoError