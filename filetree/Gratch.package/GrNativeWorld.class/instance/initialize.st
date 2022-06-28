initialization
initialize
	super initialize.
	raisedEvents := Set new.
	breeds := Array new.
	random := SharedRandom globalGenerator