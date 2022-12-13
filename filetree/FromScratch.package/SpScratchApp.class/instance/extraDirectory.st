accessing
extraDirectory

	extraDirectory ifNotNil: [ ^ extraDirectory ].
	^ self projectDirectory