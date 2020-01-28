private
livingBreeds: bno
	| list |
	list := OrderedCollection new.
	self livingBreed: bno do: [ :each | list add: each ].
	^ list asArray