initialization
initializePresenters
	pageViewer := self newMorph.
	pageViewer morph: (ScrollFrameMorph new growthFraction: 0.1).
	categories := self newList
		beSingleSelection;
		yourself