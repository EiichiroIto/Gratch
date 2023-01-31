private
argList

	| list |
	list := self options.
	list isEmpty ifTrue: [ ^ list ].
	^ list collect: #localized