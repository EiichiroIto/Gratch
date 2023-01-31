private
argList

	| list |
	list := self options.
	(list isEmpty or: [ self isVarNames ]) ifTrue: [ ^ list ].
	^ list collect: #localized