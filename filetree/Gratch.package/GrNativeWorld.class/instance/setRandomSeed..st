api
setRandomSeed: aNumber
	| seed |
	seed := aNumber asInteger.
	random := seed = 0
		ifTrue: [ SharedRandom globalGenerator ]
		ifFalse: [ Random seed: seed ]