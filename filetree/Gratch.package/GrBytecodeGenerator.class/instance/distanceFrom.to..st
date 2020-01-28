sensing ops
distanceFrom: n1 to: n2
	self appendValue: n2.
	self appendSymbol: #xyOf.
	self appendValue: n1.
	self appendSymbol: #xyOf.
	self appendSymbol: #rot.
	self appendSymbol: #minus.
	self appendSymbol: #dup.
	self appendSymbol: #mul.
	self appendSymbol: #swap.
	self appendSymbol: #rot.
	self appendSymbol: #minus.
	self appendSymbol: #dup.
	self appendSymbol: #mul.
	self appendSymbol: #plus.
	self appendSymbol: #sqrt.
	^ nil