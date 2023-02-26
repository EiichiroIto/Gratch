test
testExecuteThreadBreedNoIndexIfTerminatedDo

	| w prg p f x addr |
	w := self newWorld.
	prg := GrProgram new.
	p := self newProcess.
	p grWorld: w.
	p program: prg.
	w createNodes: 1.
	w
		var: GrNodesVarDef colorVarNo
		breed: GrBreedId nodesBreedNo
		at: 1
		put: ColorList black.
	addr := prg nextAddress.
	prg addCode: { 
			#pushShort.
			GrNodesVarDef colorVarNo.
			0.
			#pushShort.
			ColorList white.
			0.
			#setVarTo.
			#stop }.
	f := false.
	p
		executeThread: addr
		breedNo: GrBreedId nodesBreedNo
		index: 1
		ifTerminatedDo: [ f := true ].
	x := w
		     var: GrNodesVarDef colorVarNo
		     breed: GrBreedId nodesBreedNo
		     at: 1.
	self assert: x equals: ColorList white.
	self deny: f.
	addr := prg nextAddress.
	prg addCode: { #stopAll }.
	p
		executeThread: addr
		breedNo: GrBreedId nodesBreedNo
		index: 1
		ifTerminatedDo: [ f := true ].
	self assert: f