inspecting
changeValue: anArray
	| var vno bno id |
	inspectorTarget ifNil: [ ^ self findObject: '' ].
	anArray ifNil: [ ^ self ].
	bno := inspectorTarget first.
	id := inspectorTarget second.
	var := anArray first.
	var = 'id'
		ifTrue: [ ^ self findObject: id ].
	vno := self grWorld varNoFor: var breed: bno.
	var = 'color'
		ifTrue: [ self changeColor: vno breed: bno at: id ]
		ifFalse: [ var = 'name'
				ifTrue: [ self changeStringVar: vno breed: bno at: id ]
				ifFalse: [ self changeNumberVar: vno breed: bno at: id ] ].
	inspectorPane items: (self grWorld varsBreed: bno at: id).
	stageFrame display changed