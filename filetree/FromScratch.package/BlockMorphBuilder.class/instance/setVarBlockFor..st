api
setVarBlockFor: aString

	^ SetterBlockMorph new
		  receiver: script;
		  initSetterForVar: aString;
		  color: (self blockColorFor: 'variables');
		  yourself