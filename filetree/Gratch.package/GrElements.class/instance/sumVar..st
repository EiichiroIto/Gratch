private
sumVar: vno
	| sum v |
	sum := 0.
	self
		livingOnesDo: [ :each | 
			v := self var: vno at: each.
			sum := sum + v ].
	^ sum