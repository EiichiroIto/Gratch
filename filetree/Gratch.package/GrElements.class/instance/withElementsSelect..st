accessing variable
withElementsSelect: aBlock
	^ (1 to: self size)
		select: [ :each | aBlock value: each value: self ]