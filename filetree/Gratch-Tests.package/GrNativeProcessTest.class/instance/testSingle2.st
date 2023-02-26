test
testSingle2

	| w p pr |
	w := self newWorld.
	pr := GrProgram new.
	pr addCode: #( #pushShort 10 0 #broadcast #stop ).
	pr addEntryPoint: 1 eventNo: EventId singleEventNo breedNo: 1.
	p := self newProcess.
	p grWorld: w.
	p program: pr.
	p single.
	p step.
	p step