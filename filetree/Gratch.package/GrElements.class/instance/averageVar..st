private
averageVar: vno
	| sum v count |
	sum := 0.
	count := 0.
	self
		livingOnesDo: [ :each | 
			v := self var: vno at: each.
			sum := sum + v.
			count := count + 1 ].
	^ count = 0
		ifTrue: [ 0 ]
		ifFalse: [ sum / count ]