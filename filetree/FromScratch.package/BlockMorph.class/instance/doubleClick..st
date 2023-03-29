event handling
doubleClick: evt

	SpScratchApp useSingleClick ifFalse: [ self topBlock toggleProcess ]