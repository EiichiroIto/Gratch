code generator
generateReporter: aSymbol morph: aMorph

	| ret |
	ret := 0.
	SpScratchApp
		try: [ 
			ret := self
				       perform: aSymbol asSymbol
				       withArguments: aMorph blockArgs ]
		onFailure: [ aMorph showBalloon: 'Error!' localized ].
	^ ret