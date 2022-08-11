private
createEditorPage
	editor := self newMorph.
	editor
		morph:
			(ScrollFrameMorph new
				growthFraction: 0.1;
				color: ScratchTheme scriptsPaneColor).
	^ SpNotebookPage
		title: self scriptsLabel
		icon: (self iconNamed: #morph)
		provider: [ editor ]