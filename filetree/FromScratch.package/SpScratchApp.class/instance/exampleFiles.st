private
exampleFiles
	| list |
	list := self examplesDirectory filesMatching: '*.' , self class extension.
	^ list sorted