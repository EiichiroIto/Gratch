accessing nodes
nearestNodeAt: aPoint except: anInteger
	| min n dist |
	min := nil.
	n := 0.
	self nodes
		withLivingOnesDo: [ :each :nodes | 
			each ~= anInteger
				ifTrue: [ dist := ((nodes pointAt: each) - aPoint) r.
					(min isNil or: [ min > dist ])
						ifTrue: [ min := dist.
							n := each ] ] ].
	^ n