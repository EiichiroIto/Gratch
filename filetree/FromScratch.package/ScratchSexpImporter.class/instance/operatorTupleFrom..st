private
operatorTupleFrom: aCollection

	| tuple |
	tuple := aCollection copy.
	self updateArgs: tuple.
	^ tuple