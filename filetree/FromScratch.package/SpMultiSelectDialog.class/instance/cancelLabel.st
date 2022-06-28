api
cancelLabel

	^ cancelLabel ifNil: [ self class defaultCancelLabel ]