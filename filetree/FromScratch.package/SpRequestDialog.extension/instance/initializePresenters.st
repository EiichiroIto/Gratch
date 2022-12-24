*FromScratch
initializePresenters

	image := self newImage image: self defaultIcon.
	label := self newLabel.
	textInput := self newTextInput.
	textInput
		bindKeyCombination: Character cr asKeyCombination
		toAction: [ self accept ];
		bindKeyCombination: Character escape asKeyCombination
		toAction: [ self cancel ]