program
setupStart: aHatBlock program: aProgram table: aDictionary events: aDictionary2
	| code addr |
	aDictionary2
		at: aHatBlock selector
		ifPresent: [ :eventNo | 
			addr := aProgram nextAddress.
			code := project newCode
				address: addr;
				subTable: aDictionary;
				script: self;
				parseBlock: aHatBlock.
			aProgram
				addCode: code;
				addEntryPoint: addr eventNo: eventNo breedNo: self breedNo ]