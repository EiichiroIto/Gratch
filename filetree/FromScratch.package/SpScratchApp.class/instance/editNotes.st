menu actions
editNotes

	| ret |
	self closeMediaEditorsAndDialogs.
	ret := self
		       multiLineRequest: 'Project Notes' localized
		       initialAnswer: project comment.
	ret ifNil: [ ^ self ].
	project comment: ret