initialization
initialize
	zoom := 1.
	painter := GrGraphPainter new.
	super initialize.
	self highlightColor: self theme selectionColor.
	self extent: self defaultExtent.
	self on: #click send: #click: to: self.
	self on: #mouseEnter send: #mouseEnter: to: self.
	self on: #mouseStillDown send: #mouseStillDown: to: self.
	painter screenRect: self bounds.
	self reset