private
change: aSelectionMode breed: bno at: id
	| item var vno |
	item := aSelectionMode selectedItem.
	var := item first.
	vno := self grWorld varNoFor: var breed: bno.
	var = 'id'
		ifTrue: [ ^ self ].
	var = 'color'
		ifTrue: [ ^ self changeColor: vno breed: bno at: id ].
	var = 'name'
		ifTrue: [ ^ self changeStringVar: vno breed: bno at: id ].
	self changeNumberVar: vno breed: bno at: id