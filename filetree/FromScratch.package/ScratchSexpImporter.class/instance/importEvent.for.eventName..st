private
importEvent: aCollection for: aScript eventName: aString

	| tuple |
	tuple := self eventBlockTupleFor: aString.
	^ self importHat: aCollection for: aScript tuple: tuple