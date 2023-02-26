initialization
initialize

	super initialize.
	self removeAllMorphs.
	labelMorph := StringMorph
		              contents: 'when I receive'
		              font: ScratchTranslator labelFont.
	labelMorph color: Color white.
	self addMorphBack: labelMorph.
	scriptNameMorph := EventTitleMorph new.
	self addMorphBack: scriptNameMorph