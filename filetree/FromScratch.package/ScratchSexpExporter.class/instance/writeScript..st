private
writeScript: aScript
	| code |
	stream
		nextPutAll: '(for ';
		nextPutAll: aScript objName;
		nextPut: Character space;
		nextPut: $(.
	self writetVarNames: aScript.
	stream
		nextPut: $);
		nextPut: Character lf;
		nextPut: Character space;
		nextPut: Character space;
		nextPut: Character space;
		nextPut: $(.
	aScript subBlocks
		do: [ :each | 
			code := ScratchSexpGenerator new parse: each initialIndent: 3.
			stream nextPutAll: code ]
		separatedBy: [ stream
				nextPut: Character lf;
				nextPut: Character space;
				nextPut: Character space;
				nextPut: Character space ].
	aScript eventBlocks
		do: [ :each | 
			code := ScratchSexpGenerator new parse: each initialIndent: 3.
			stream nextPutAll: code ]
		separatedBy: [ stream
				nextPut: Character lf;
				nextPut: Character space;
				nextPut: Character space;
				nextPut: Character space ].
	stream nextPutAll: '))'