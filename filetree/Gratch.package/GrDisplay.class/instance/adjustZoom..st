private
adjustZoom: anInteger
	| prev |
	prev := self zoomLevels first.
	self zoomLevels
		do: [ :each | 
			each >= anInteger
				ifTrue: [ ^ each ].
			prev := each ].
	^ prev