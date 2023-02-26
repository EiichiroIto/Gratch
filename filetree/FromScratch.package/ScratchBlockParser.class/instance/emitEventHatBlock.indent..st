code generator
emitEventHatBlock: aMorph indent: indent
	| str |
	str := aMorph eventName.
	str isEmpty ifTrue: [^ self].
	generator generateEventHeader: str.
	aMorph nextBlock
		ifNotNil: [self
				emitCode: aMorph nextBlock
				indent: indent + (generator indentLevelFor: aMorph)].
	generator generateEventFooter: str.