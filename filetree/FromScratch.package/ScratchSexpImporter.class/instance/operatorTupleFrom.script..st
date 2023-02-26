private
operatorTupleFrom: aCollection script: aScript

	| tuple |
	tuple := aCollection copy.
	self updateArgs: tuple script: aScript.
	^ tuple