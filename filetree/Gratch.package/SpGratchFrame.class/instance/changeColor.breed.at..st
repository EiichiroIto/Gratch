private
changeColor: vno breed: bno at: id
	| dialog cno |
	dialog := self instantiate: SpColorList.
	dialog openModalWithSpec cancelled ifTrue: [ ^ self ].
	cno := dialog selectedColor.
	self grWorld var: vno breed: bno at: id put: cno