private
addMenuMorph

	menuMorph := ImageMorph new form: DropDownMenuForm.
	self addMorphFront: menuMorph.
	self fixArgLayout