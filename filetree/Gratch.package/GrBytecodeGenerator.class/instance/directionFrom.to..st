sensing ops
directionFrom: n1 to: n2
	self appendValue: n1.
	self appendSymbol: #xyOf.
	self appendValue: n2.
	self appendSymbol: #xyOf.
	self appendSymbol: #rot.
	self appendSymbol: #minus.
	self appendSymbol: #swap.
	self appendSymbol: #rot.
	self appendSymbol: #minus.
	self appendSymbol: #swap.
	self appendSymbol: #direction.
	^ nil