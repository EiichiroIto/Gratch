accessing
scaleValue: v color: anInteger from: aNumber1 to: aNumber2
	anInteger < 5
		ifTrue: [ ^ self scaleGrayscale: v from: aNumber1 to: aNumber2 ].
	aNumber1 = aNumber2
		ifTrue: [ ^ self black ].
	(aNumber1 < aNumber2 and: [ v < aNumber1 ])
		ifTrue: [ ^ self black ].
	(aNumber1 < aNumber2 and: [ v > aNumber2 ])
		ifTrue: [ ^ self white ].
	(aNumber1 > aNumber2 and: [ v > aNumber1 ])
		ifTrue: [ ^ self black ].
	(aNumber1 > aNumber2 and: [ v < aNumber2 ])
		ifTrue: [ ^ self white ].
	^ (anInteger - 5
		interpolateTo: anInteger + 4
		at: (v - aNumber1) / (aNumber2 - aNumber1)) truncated