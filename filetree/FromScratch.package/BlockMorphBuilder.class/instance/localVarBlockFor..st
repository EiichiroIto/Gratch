block building
localVarBlockFor: aString

	^ LocalVarBlockMorph new
		  commandSpec: aString;
		  receiver: script