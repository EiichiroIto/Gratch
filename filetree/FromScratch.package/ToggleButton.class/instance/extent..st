geometry
extent: aRectangle

	"Overridden because SimpleButtonMorph tries to center the label, if there is one, and we want manual control."

	| morph oldP oldPSub |
	(morph := self findA: StringMorph) ifNil: [ 
		self submorphCount = 1 ifTrue: [ 
			oldPSub := self firstSubmorph position ].
		super extent: aRectangle.
		self submorphCount = 1 ifTrue: [ 
			self firstSubmorph position: oldPSub ].
		^ self ].
	oldP := morph position.
	super extent: aRectangle.
	morph position: oldP