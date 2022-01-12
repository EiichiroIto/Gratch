variables
deleteVariable: aString
	breed deleteVariable: aString.
	labels := labels copyWithout: aString.
	self updateLabels