button actions
startEvent
	| program menu eno |
	self stopAllProcesses.
	presenter stepTime: 0.
	self setupEvents.
	eno := 0.
	menu := presenter
		eventMenuFrom: events
		whenSelected: [ :v | eno := v ].
	menu ifNil: [ ^ self ].
	menu openWithSpecAt: self uiManager world cursorPoint.
	eno = 0 ifTrue: [ ^ self ].
	program := project programOf: events.
	process := self newProcess program: program.
	process event: eno.
	^ process