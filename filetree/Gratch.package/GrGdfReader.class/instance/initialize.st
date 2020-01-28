initialize-release
initialize
	super initialize.
	state := nil.
	columns := OrderedCollection new.
	nodes := Dictionary new.