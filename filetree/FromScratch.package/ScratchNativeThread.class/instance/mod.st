arithmetic ops
mod
	| x y |
	y := self pop.
	x := self pop.
	y = 0
		ifTrue: [ ^ self errorOccuered ].
	self push: x \\ y.