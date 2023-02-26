event handling
duplicate
	"Overridden to pick an unused script name for the duplicate."

	| m |
	m := self fullCopy.
	receiver ifNotNil: [m receiver: receiver].
	self world activeHand attachMorph: m.
