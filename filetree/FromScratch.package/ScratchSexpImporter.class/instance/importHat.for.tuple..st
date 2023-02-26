private
importHat: aCollection for: aScript tuple: anArray

	| block prev tuple top |
	tuple := anArray.
	top := block := aScript blockFromTuple: tuple.
	prev := aScript blocksBin.
	prev addMorph: block.
	prev := block.
	aCollection do: [ :each | 
		tuple := self tupleFrom: each script: aScript.
		block := aScript blockFromTuple: tuple.
		prev nextBlock: block.
		prev := block ].
	^ top