private
registerDropHandler

	| handler |
	self unregisterDropHandler.
	handler := ExternalDropHandler
		           type: nil
		           extension: self extension
		           action: [ :file :morph :event | 
			           self handleDropFile: file in: morph event: event ].
	ExternalDropHandler registerHandler: handler