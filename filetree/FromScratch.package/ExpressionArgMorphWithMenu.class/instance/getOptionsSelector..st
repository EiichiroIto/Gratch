accessing
getOptionsSelector: menuSelector

	"Add a drop-down menu button with the given selector. The selector should result in a menu whose action items are values that can be put into this type argument, typically numbers or strings."

	getOptionsSelector := menuSelector.
	self addMenuMorph