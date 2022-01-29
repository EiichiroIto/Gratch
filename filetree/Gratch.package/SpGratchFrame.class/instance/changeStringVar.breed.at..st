inspecting
changeStringVar: vno breed: bno at: id
	| val ret |
	val := self grWorld string: vno breed: bno at: id.
	ret := UIManager default
		request: 'Enter string' localized
		initialAnswer: val asString.
	ret ifNil: [ ^ self ].
	self grWorld
		string: vno
		breed: bno
		at: id
		put: ret asString