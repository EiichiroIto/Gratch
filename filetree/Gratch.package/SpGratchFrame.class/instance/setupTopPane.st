initialization
setupTopPane

	logo image: (ScratchTheme formAt: #scratchLogo).
	buttonOpen
		icon: (ScratchTheme formAt: #openButton);
		help: 'Open Project' localized.
	buttonSave
		icon: (ScratchTheme formAt: #saveButton);
		help: 'Save Project' localized.
	self buildMenu