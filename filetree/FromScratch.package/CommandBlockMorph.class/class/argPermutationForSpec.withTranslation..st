utilities
argPermutationForSpec: spec withTranslation: translatedSpec

	| parsedSpec parsedTranslatedSpec parsedSpecArgs parsedTranslatedSpecArgs permutation copiesSize n originalPermutation |
	parsedSpec := self parseCommandSpec: spec.
	parsedSpecArgs := parsedSpec select: [ :s | self isArgSpec: s ].
	parsedTranslatedSpec := self parseCommandSpec: translatedSpec.
	parsedTranslatedSpecArgs := parsedTranslatedSpec select: [ :s | 
		                            self isArgSpec: s ].
	permutation := #(  ).
	1 to: parsedSpecArgs size do: [ :i | 
	permutation := permutation copyWith: i ].
	originalPermutation := permutation.
	parsedSpecArgs = parsedTranslatedSpecArgs ifTrue: [ 
		^ originalPermutation ].
	parsedSpecArgs withIndexDo: [ :a :i | 
		copiesSize := (parsedSpecArgs select: [ :s | s = a ]) size.
		copiesSize = 1
			ifTrue: [ 
				permutation at: i put: (parsedTranslatedSpecArgs
						 indexOf: a
						 ifAbsent: [ self error: 'Permutation failed: ' , spec ]) ]
			ifFalse: [ 
				n := ((parsedSpecArgs copyFrom: 1 to: i) select: [ :s | s = a ])
					     size.
				permutation at: i put: (parsedTranslatedSpecArgs
						 indexOf: a , n asString
						 ifAbsent: [ self error: 'Permutation failed: ' , spec ]) ] ].
	^ permutation