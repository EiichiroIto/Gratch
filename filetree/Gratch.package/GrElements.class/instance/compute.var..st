microworld
compute: anInteger var: vno
	anInteger = GrCommandId maxCommandNo
		ifTrue: [ ^ self maxVar: vno ].
	anInteger = GrCommandId minCommandNo
		ifTrue: [ ^ self minVar: vno ].
	anInteger = GrCommandId sumCommandNo
		ifTrue: [ ^ self sumVar: vno ].
	anInteger = GrCommandId averageCommandNo
		ifTrue: [ ^ self averageVar: vno ].
	anInteger = GrCommandId maxElementCommandNo
		ifTrue: [ ^ self maxElement: vno ].
	anInteger = GrCommandId minElementCommandNo
		ifTrue: [ ^ self minElement: vno ].
	^ 0