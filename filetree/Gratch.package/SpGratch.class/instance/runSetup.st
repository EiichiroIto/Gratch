processes
runSetup
	| program |
	self setupEvents.
	program := project programOf: events.
	process := self newProcess program: program.
	process startup.
	^ process