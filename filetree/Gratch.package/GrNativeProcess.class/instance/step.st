accessing
step
	self isRunning
		ifFalse: [ ^ self ].
	grWorld
		clearRaisedEvents;
		incrementTicks.
	[ self doOneCycle ] whileTrue.
	self isRunning
		ifFalse: [ ^ self ].
	runningEvents := grWorld raisedEvents copy.
	self perform: transition.