accessing
toggleWatcher: aToggleButton for: aBlockMorph
	| label |
	label := self watcherLabelFor: aBlockMorph.
	self toggleLabel: label.
	(self hasLabel: label)
		ifTrue: [ aToggleButton on ]
		ifFalse: [ aToggleButton off ]