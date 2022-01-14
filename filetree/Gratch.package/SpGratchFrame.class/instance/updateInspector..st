private
updateInspector: anInteger
	anInteger
		ifNil: [ self clearInspector ]
		ifNotNil: [ inspectorTarget := Array with: self currentBreedNo with: anInteger.
			self updateInspector ]