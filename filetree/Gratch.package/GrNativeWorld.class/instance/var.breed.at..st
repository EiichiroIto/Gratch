accessing variable
var: vno breed: bno at: id
	^ vno = 0
		ifTrue: [ id ]
		ifFalse: [ (self breedOf: bno) var: vno at: id ]