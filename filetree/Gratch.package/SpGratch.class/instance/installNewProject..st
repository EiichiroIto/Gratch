private
installNewProject: aProject
	self stopAllProcesses.
	self grWorld: self newWorld.
	project := aProject.
	project application: self.
	project scripts do: [ :each | grWorld addBreed: each breed ].
	project fixVars.
	project updateLabels.
	self setupView.
	Smalltalk garbageCollect.
	project modified: false