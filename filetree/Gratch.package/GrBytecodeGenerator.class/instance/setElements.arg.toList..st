code injection
setElements: cno arg: arg toList: vno
	self appendValue: arg.
	self appendValue: cno.
	self appendValue: vno.
	self appendSymbol: #setElementsTo