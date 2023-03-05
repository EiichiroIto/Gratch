api
updateWatcher: aToggleButton for: aBlockMorph
	| label |
	label := self watcherLabelFor: aBlockMorph.
	(self hasLabel: label)
		ifTrue: [ aToggleButton on ]
		ifFalse: [ aToggleButton off ]