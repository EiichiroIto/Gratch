initialization
initialize
	super initialize.
	self extent: self defaultExtent.
	self on: #click send: #click: to: self.
	self on: #mouseEnter send: #mouseEnter: to: self.
	self on: #mouseStillDown send: #mouseStillDown: to: self.
	self reset