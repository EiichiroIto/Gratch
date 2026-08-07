accessing
open

	| window |
	self prepareForOpening.
	presenter := self instantiate: self class presentationClass.
	window := presenter open.
	self newProject.
	self registerDropHandler.
	presenter updateWindowSettings.
	window maximize.
	presenter whenStepsDo: [ self stepProcesses ].
	^ self