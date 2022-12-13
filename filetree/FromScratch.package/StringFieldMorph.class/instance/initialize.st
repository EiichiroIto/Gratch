initialization
initialize

	super initialize.

	stringMorph := StringMorph new
		               contents: '';
		               font: (StrikeFont familyName: 'Verdana' size: 12).
	self addMorph: stringMorph.

	self color: Color red.
	self textColor: ScratchTheme dialogBoxTextColor.
	blinkState := true.
	isNumeric := false.
	isKeyboardFocus := false.
	self keyboardFocusChange: false.
	selectionStart := selectionEnd := 0.
	self borderInset.
	borderWidth := 2.
	self font: stringMorph font.
	self width: 100.
	borderColor := Color transparent.
	borderWidth := 0.
	"insetX := 0."
	"heightPadding := 2."
	self font: ScratchTranslator argFont