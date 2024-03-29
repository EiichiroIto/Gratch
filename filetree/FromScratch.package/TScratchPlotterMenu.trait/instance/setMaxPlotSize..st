menu actions
setMaxPlotSize: aPlotter

	| ret |
	ret := SpScratchPresenter
		       request: 'number of max plots?' localized
		       initialAnswer: (aPlotter maxSize ifNil: [ '' ]) asString.
	ret ifNil: [ ^ self ].
	ret := ret isEmpty
		       ifTrue: [ nil ]
		       ifFalse: [ ret asNumberNoError ].
	aPlotter maxSize: ret