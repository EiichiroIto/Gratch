code generator
emitSubHatBlock: aMorph indent: indent

	| str i2 |
	str := aMorph subName.
	str isEmpty ifTrue: [ ^ self ].
	generator generateSubHeader: str.
	i2 := indent + (generator indentLevelFor: aMorph).
	aMorph nextBlock
		ifNil: [ 
			generator
				generateIndent: i2;
				generateEmptySubBody ]
		ifNotNil: [ 
			self emitSubVarDeclaration: aMorph indent: i2.
			self emitCode: aMorph nextBlock indent: i2 ].
	generator generateSubFooter: str