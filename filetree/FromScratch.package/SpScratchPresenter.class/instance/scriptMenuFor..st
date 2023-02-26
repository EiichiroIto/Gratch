menu building
scriptMenuFor: aScript

	^ self newMenu in: [ :m | 
		  self addScriptMenu: m for: aScript.
		  m ]