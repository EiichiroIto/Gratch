code generator
emitStartHatBlock: aStartHatMorph indent: anInteger

	| str |
	str := aStartHatMorph selector.
	str isEmpty ifTrue: [ ^ self ].
	generator generateEventHeader: str.
	aStartHatMorph nextBlock ifNotNil: [ 
		self
			emitCode: aStartHatMorph nextBlock
			indent: anInteger + (generator indentLevelFor: aStartHatMorph) ].
	generator generateEventFooter: str