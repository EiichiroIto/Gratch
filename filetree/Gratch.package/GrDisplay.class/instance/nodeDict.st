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
							(each = highlightNode
								ifTrue: [ {p.
									(self highlightColor).
									(self nodeLabelsFor: each).
									(self nodeRectangleCenterAt: p)} ]
								ifFalse: [ {p.
									(ColorList colorAt: (grWorld nodeColorAt: each)).
									(self nodeLabelsFor: each).
									(self nodeRectangleCenterAt: p)} ]) ] ].
	^ dict