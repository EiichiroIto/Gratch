sensing ops
distance

	self appendValue: self getN2.
	self appendSymbol: #xyOf.
	self appendValue: self getN1.
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