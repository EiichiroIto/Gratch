private
importSub: aCollection for: aScript subName: aString

	| tuple |
	tuple := self subBlockTupleFor: aString.
	^ self importHat: aCollection for: aScript tuple: tuple