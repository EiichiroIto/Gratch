private
exampleFiles
	| list |
	list := self examplesDirectory filesMatching: '*.gr;*.grs'.
	^ list sorted