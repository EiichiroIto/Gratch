private
argMorphFor: specString
	"Answer an argument morph for the given argument specification string. Set it's color appropriately."

	| m |
	m := receiver argMorphFor: specString second.
	(m isKindOf: ColorArgMorph)
		ifTrue: [m color: Color random].
	^ m
