button actions
clearEdges
	grWorld clearBreed: project edgesScript breedNo.
	self updateStatusForced: true.
	presenter updateDisplay