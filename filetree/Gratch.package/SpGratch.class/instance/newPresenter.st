instance creation
newPresenter
	^ SpGratchPresenter basicNew
		application: self;
		initialize;
		whenStepsDo: [ self stepProcesses ]