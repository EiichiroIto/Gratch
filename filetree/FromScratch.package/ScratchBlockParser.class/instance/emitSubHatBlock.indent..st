code generator
emitSubHatBlock: aMorph indent: indent

	| str i2 |
	str := aMorph subName.
	str isEmpty ifTrue: [ ^ self ].
	codeGenerator generateSubHeader: str.
	i2 := indent + (codeGenerator indentLevelFor: str).
	aMorph nextBlock
		ifNil: [ 
			codeGenerator
				generateIndent: i2;
				generateEmptySubBody ]
		ifNotNil: [ 
			self emitGlobalVars: aMorph varNames indent: i2.
			self emitCode: aMorph nextBlock indent: i2 ].
	codeGenerator generateSubFooter: str