block building
convertEventHatTuple: anArray

	| selector |
	anArray first = #EventHatMorph ifTrue: [ 
		selector := anArray second asSymbol.
		^ (self startHatBlockNames includes: selector)
			  ifTrue: [ Array with: selector ]
			  ifFalse: [ Array with: #event: with: selector ] ].
	anArray first = #SubHatMorph ifTrue: [ 
		^ Array with: #sub: with: anArray second ].
	^ anArray