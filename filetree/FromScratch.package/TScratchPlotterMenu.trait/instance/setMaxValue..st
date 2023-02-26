menu actions
setMaxValue: aPlotter

	| ret |
	ret := SpScratchPresenter
		       request: 'maximum plot value?' localized
		       initialAnswer: (aPlotter max ifNil: [ '' ]) asString.
	ret ifNil: [ ^ self ].
	ret := ret isEmpty
		       ifTrue: [ nil ]
		       ifFalse: [ ret asNumberNoError ].
	aPlotter max: ret