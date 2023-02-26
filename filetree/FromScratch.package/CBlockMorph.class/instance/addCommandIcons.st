private
addCommandIcons

	"Add additional icons to certain blocks. Do nothing if this isn't one of those blocks."

	| f |
	super addCommandIcons.
	(receiver loopBlockSelectors includes: selector) ifTrue: [ 
		f := ScratchTheme formAt: #loopIcon.
		loopMorph := ImageMorph new form: f.
		self addMorphBack: loopMorph ]