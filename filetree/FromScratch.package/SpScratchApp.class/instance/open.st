accessing
open

	| window |
	self prepareForOpening.
	presenter := self newPresenter: self class presentationClass.
	window := presenter open.
	self newProject. 
	presenter updateWindowSettings.
	window maximize.
	presenter whenStepsDo: [ self stepProcesses ].
	^ self