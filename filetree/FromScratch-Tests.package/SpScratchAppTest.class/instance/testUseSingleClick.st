test
testUseSingleClick

	| tmp |
	tmp := SpScratchApp useSingleClick.
	[ 
	SpScratchApp useSingleClick: true.
	self assert: SpScratchApp useSingleClick.
	SpScratchApp useSingleClick: false.
	self deny: SpScratchApp useSingleClick ] ensure: [ 
		SpScratchApp useSingleClick: tmp ]