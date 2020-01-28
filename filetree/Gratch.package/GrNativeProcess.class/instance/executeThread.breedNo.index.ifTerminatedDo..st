execution
executeThread: entryPoint breedNo: bno index: index ifTerminatedDo: aBlock
	| thread |
	thread := GrNativeThread grWorld: grWorld.
	thread forBreedNo: bno index: index.
	thread codes: program codes.
	thread execute: entryPoint.
	thread isTerminated
		ifTrue: [ aBlock value ].