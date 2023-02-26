processes
startProcessFor: topBlock

	| code program |
	self stopAllProcesses.
	self setupEvents.
	code := self newCode
		        script: presenter target;
		        yourself.
	program := self newProgram.
	program
		addCode: (code parseBlock: topBlock);
		addEntryPoint: 1
		eventNo: EventId singleEventNo
		breedNo: topBlock receiver breedNo.
	process := self newProcess program: program.
	process single.
	^ process