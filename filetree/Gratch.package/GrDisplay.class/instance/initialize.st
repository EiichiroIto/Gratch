initialization
initialize
	zoom := 1.
	painter := GrGraphPainter new.
	painter bgColor: self theme backgroundColor.
	super initialize.
	self highlightColor: self theme selectionColor.
	self borderColor: self theme textColor.
	self extent: self defaultExtent.
	self on: #click send: #click: to: self.
	self on: #mouseEnter send: #mouseEnter: to: self.
	self on: #mouseStillDown send: #mouseStillDown: to: self.
	painter screenRect: self bounds.
	self reset