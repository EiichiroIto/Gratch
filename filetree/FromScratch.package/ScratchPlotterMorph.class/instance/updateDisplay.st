accessing
updateDisplay
	(Time now asDuration - lastUpdateTime asDuration) totalSeconds
		< (updatePeriod / 1000)
		ifTrue: [ ^ self ].
	lastUpdateTime := Time now.
	self
		updateCache;
		changed