accessing
addChoiceArg: aCharacter options: aCollection initialChoice: aString

	self add: aCharacter builder: [ 
		StaticChoiceArgMorph new
			options: aCollection;
			choice: aString ]