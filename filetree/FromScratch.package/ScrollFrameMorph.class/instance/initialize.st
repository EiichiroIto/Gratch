initialization
initialize

	super initialize.
	self borderWidth: 0.
	self color: Color blue.
	contentsChanged := false.
	growthFraction := 0.6.

	contents := PasteUpMorph new
		            color: (Color gray: 0.9);
		            borderWidth: 0;
		            enableDragNDrop: true.
	hScrollbar := ScratchScrollBar newHorizontal
		              target: self;
		              selector: #hScrollRelative:.
	vScrollbar := ScratchScrollBar newVertical
		              target: self;
		              selector: #vScrollRelative:.

	contents position: self position + borderWidth.
	self addMorph: contents.
	self addMorph: hScrollbar.
	self addMorph: vScrollbar.
	self extent: 160 @ 120