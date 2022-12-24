accessing
realColorAt: anInteger

	| index |
	index := self normalize: anInteger.
	^ colors at: index + 1