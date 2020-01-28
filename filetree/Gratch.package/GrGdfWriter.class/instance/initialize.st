initialization
initialize
	super initialize.
	stream := WriteStream on: ''.
	nodeColumns := self defaultNodeColumns.
	edgeColumns := self defaultEdgeColumns.