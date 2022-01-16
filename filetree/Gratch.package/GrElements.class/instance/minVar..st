private
minVar: vno
	| min v |
	min := nil.
	self
		livingOnesDo: [ :each | 
			v := self var: vno at: each.
			(min isNil or: [ v < min ])
				ifTrue: [ min := v ] ].
	^ min ifNil: [ 0 ]