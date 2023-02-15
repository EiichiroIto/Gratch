evaluation
evaluateBlock: aTopBlock

	^ self evaluator perform: aTopBlock selector withArguments: aTopBlock coerceArgs