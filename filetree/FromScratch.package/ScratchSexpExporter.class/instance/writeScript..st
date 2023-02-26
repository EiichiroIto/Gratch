private
writeScript: aScript

	| code |
	stream
		nextPutAll: '(for ';
		nextPutAll: aScript objName;
		nextPut: Character space;
		nextPut: $(.
	self writeVarNames: aScript.
	stream nextPut: $).
	self writeIndent.
	stream nextPut: $(.
	aScript allHatBlocks
		do: [ :each | 
			code := ScratchSexpGenerator new parseBlock: each initialIndent: 3.
			stream nextPutAll: code ]
		separatedBy: [ self writeIndent ].
	stream nextPutAll: '))'