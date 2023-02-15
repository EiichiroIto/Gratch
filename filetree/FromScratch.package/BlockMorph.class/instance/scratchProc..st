processes
scratchProc: aScratchProcess

	hadError ifTrue: [ cachedFeedbackForm := nil ].
	hadError := false.
	scratchProc := aScratchProcess.
	self changed