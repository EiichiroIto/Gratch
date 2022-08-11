test
testOptionsFor

	| obj |
	obj := self newObj.
	self
		assertCollection: (obj optionsFor: #dontClose)
		equals: { true. false }