menu building
blockMenuFor: aBlockMorph inScriptEditor: aBoolean

	aBoolean ifFalse: [ ^ nil ].
	^ self newMenu in: [ :m | 
		  self addBlockMenu: m for: aBlockMorph.
		  m ]