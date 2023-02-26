button actions
clearNodes
	grWorld clearBreed: project nodesScript breedNo.
	self updateStatusForced: true.
	presenter updateDisplay