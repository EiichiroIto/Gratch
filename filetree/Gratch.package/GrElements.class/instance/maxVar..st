private
maxVar: vno
	| max v |
	max := nil.
	self
		livingOnesDo: [ :each | 
			v := self var: vno at: each.
			(max isNil or: [ v > max ])
				ifTrue: [ max := v ] ].
	^ max ifNil: [ 0 ]