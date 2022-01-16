variable ops
compute: anInteger var: anInteger2 breed: anInteger3
	self appendValue: anInteger.
	self appendValue: anInteger2.
	self appendValue: anInteger3.
	self appendSymbol: #computeVar.
	^ nil