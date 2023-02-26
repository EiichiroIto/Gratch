program
setupSub: aHatBlock program: aProgram table: aDictionary

	| code addr |
	addr := aProgram nextAddress.
	code := project newCode
		        address: addr;
		        subTable: aDictionary;
		        script: self;
		        parseBlock: aHatBlock.
	aProgram addCode: code.
	aDictionary at: aHatBlock subName put: addr