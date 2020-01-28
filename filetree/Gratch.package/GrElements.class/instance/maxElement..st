microworld
maxElement: vno
	| max id v |
	max := nil.
	id := 0.
	self
		livingOnesDo: [ :each | 
			v := self var: vno at: each.
			(max isNil or: [ v > max ])
				ifTrue: [ max := v.
					id := each ] ].
	^ id