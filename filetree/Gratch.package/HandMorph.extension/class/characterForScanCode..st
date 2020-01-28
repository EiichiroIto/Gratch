*Gratch
characterForScanCode: anInteger
	(anInteger < 0 or: [ anInteger > 255 ])
		ifTrue: [ ^ nil ].
	ScanCode ifNil: [ self initializeScanCode ].
	^ ScanCode at: anInteger + 1