initialization
initialize
	super initialize.
	self color: Color black.
	screenSize := self defaultScreenSize.
	self clearScreen.
	font := self defaultFont.
	self updateCharExtent.
	self updateExtent