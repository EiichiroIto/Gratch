microworld
minElement: vno
	| min id v |
	min := nil.
	id := 0.
	self
		livingOnesDo: [ :each | 
			v := self var: vno at: each.
			(min isNil or: [ v < min ])
				ifTrue: [ min := v.
					id := each ] ].
	^ id