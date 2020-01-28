accessing
nearestColor: aColor
	| list min minIndex |
	list := colors collect: [ :each | each diff: aColor ].
	min := 1.0.
	minIndex := nil.
	list
		withIndexDo: [ :each :index | 
			each < min
				ifTrue: [ min := each.
					minIndex := index ] ].
	^ minIndex - 1