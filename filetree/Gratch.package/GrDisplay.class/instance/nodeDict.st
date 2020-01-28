private
nodeDict
	| dict |
	dict := Dictionary new.
	grWorld allNodes
		do: [ :each | 
			| p |
			p := self graphPointToWorld: (grWorld pointAt: each).
			(self bounds containsPoint: p)
				ifTrue: [ dict
						at: each
						put:
							{p.
							(grWorld nodeColorAt: each).
							(self nodeLabelsFor: each)} ] ].
	^ dict