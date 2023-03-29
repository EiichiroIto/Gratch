test
testUseErrorCatcher

	| tmp |
	tmp := SpScratchApp useErrorCatcher.
	[ 
	SpScratchApp useErrorCatcher: true.
	self assert: SpScratchApp useErrorCatcher.
	SpScratchApp useErrorCatcher: false.
	self deny: SpScratchApp useErrorCatcher ] ensure: [ 
		SpScratchApp useErrorCatcher: tmp ]