private
writeDouble: aNumber
	stream nextPutAll: (aNumber printShowingDecimalPlaces: 1) asString