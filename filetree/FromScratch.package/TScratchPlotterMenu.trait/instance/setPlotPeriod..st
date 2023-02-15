menu actions
setPlotPeriod: aPlotter

	| ret |
	ret := SpScratchFrame
		       request: 'update plot period? (in milliseconds)' localized
		       initialAnswer: (aPlotter updatePeriod ifNil: [ '' ]) asString.
	(ret isNil or: [ ret isEmpty ]) ifTrue: [ ^ self ].
	ret := ret asNumberNoError.
	aPlotter updatePeriod: ret