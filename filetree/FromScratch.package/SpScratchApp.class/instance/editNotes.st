menu actions
editNotes

	| ret |
	self closeMediaEditorsAndDialogs.
	ret := presenter
		       multiLineRequest: 'Project Notes' localized
		       initialAnswer: project comment.
	ret ifNil: [ ^ self ].
	project comment: ret.
	project modified: true