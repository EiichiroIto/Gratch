block building
changeVarBlockFor: aString

	^ SetterBlockMorph new
		  receiver: script;
		  initChangerForVar: aString;
		  color: (self blockColorFor: 'variables');
		  yourself