sensing ops
direction

	self appendValue: self getN1.
	self appendSymbol: #xyOf.
	self appendValue: self getN2.
	self appendSymbol: #xyOf.
	self appendSymbol: #rot.
	self appendSymbol: #minus.
	self appendSymbol: #swap.
	self appendSymbol: #rot.
	self appendSymbol: #minus.
	self appendSymbol: #swap.
	self appendSymbol: #direction.
	^ nil