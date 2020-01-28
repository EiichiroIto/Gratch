private
newPresenter
	^ SpGratchFrame basicNew
		application: self;
		initialize;
		whenStepsDo: [ self stepProcesses ]