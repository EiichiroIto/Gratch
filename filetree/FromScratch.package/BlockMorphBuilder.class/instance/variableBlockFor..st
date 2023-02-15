api
variableBlockFor: aString

	^ VariableBlockMorph new
		  commandSpec: aString;
		  receiver: script;
		  yourself