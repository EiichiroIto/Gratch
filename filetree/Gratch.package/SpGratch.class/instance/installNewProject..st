private
installNewProject: aProject

	self stopAllProcesses.
	self grWorld: self newWorld.
	project := aProject.
	project application: self.
	project setupWorld: grWorld.
	project setupBlockSpecs.
	project fixVars.
	project updateLabels.
	self setupView.
	Smalltalk garbageCollect.
	project modified: false