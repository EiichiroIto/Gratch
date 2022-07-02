arithmetic ops
div
	| x y |
	y := self pop.
	x := self pop.
	y = 0
		ifTrue: [ ^ self errorOccuered ].
	self push: x asFloat / y asFloat