accessing
change: vno by: aNumber
	vno = 0
		ifTrue: [ ^ self ].
	^ (self varAt: vno) changeBy: aNumber