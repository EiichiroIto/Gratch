arg generator
eventTitleString: aString

	aString isEmpty ifTrue: [ ^ nil ].
	^ script project eventIdFor: aString asSymbol