accessing
toggleLabel: aString
	labels := (self hasLabel: aString)
		ifTrue: [ labels copyWithout: aString ]
		ifFalse: [ labels copyWith: aString ].
	self updateLabels