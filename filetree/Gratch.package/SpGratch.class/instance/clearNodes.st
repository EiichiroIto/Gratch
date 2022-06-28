button actions
clearNodes
	grWorld clearBreed: project nodes breedNo.
	self updateStatusForced: true.
	presenter updateDisplay