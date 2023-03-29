private
unregisterDropHandler

	ExternalDropHandler registeredHandlers removeAllSuchThat: [ :each | 
		each extension = self extension ]