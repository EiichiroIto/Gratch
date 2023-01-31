private
options

	"Answer my set of options. If getOptionsSelector is not nil and I'm in a CommandBlock with a non-nil receiver, fetch my set of options by sending getOptionsSelector to that receiver."

	| target list |
	target := getOptionsTarget ifNil: [ owner receiver ].
	(getOptionsSelector isNil or: [ target isNil ]) ifTrue: [ ^ #(  ) ].
	list := target perform: getOptionsSelector.
	list := list reject: [ :each | each = '-' ].
	^ list