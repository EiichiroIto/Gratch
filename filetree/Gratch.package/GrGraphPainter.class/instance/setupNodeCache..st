private
setupNodeCache: aCollection
	| dict p |
	dict := Dictionary new.
	aCollection
		do: [ :each | 
			p := grWorld pointAt: each.
			p := self screenPointFrom: p.
			(screenRect containsPoint: p)
				ifTrue: [ dict
						at: each
						put:
							{(self nodeRectangleCenterAt: p).
							(self nodeColorAt: each).
							(self nodeLabelsAt: each)} ] ].
	nodeCache := dict