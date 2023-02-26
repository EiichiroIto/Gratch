code generator
generateCode: aSymbol morph: aMorph

	SpScratchApp
		try: [ self perform: aSymbol withArguments: aMorph blockArgs ]
		onFailure: [ aMorph showBalloon: 'Error!' localized ]