button actions
clearEdges
	grWorld clearBreed: project edges breedNo.
	self updateStatusForced: true.
	presenter updateDisplay