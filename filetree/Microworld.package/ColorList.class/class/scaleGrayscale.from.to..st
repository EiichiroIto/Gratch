accessing
scaleGrayscale: v from: aNumber1 to: aNumber2
	aNumber1 = aNumber2
		ifTrue: [ ^ 0 ].
	(aNumber1 < aNumber2 and: [ v < aNumber1 ])
		ifTrue: [ ^ 0 ].
	(aNumber1 < aNumber2 and: [ v > aNumber2 ])
		ifTrue: [ ^ 255 ].
	(aNumber1 > aNumber2 and: [ v > aNumber1 ])
		ifTrue: [ ^ 0 ].
	(aNumber1 > aNumber2 and: [ v < aNumber2 ])
		ifTrue: [ ^ 255 ].
	^ (0 interpolateTo: 255 at: (v - aNumber1) / (aNumber2 - aNumber1))
		truncated