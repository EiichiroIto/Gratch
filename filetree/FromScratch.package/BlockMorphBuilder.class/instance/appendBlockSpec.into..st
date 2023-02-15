private
appendBlockSpec: aBlockSpec into: aCategoryString

	| list |
	list := blockSpecsInCategory
		        at: aCategoryString
		        ifAbsentPut: [ OrderedCollection new ].
	list add: aBlockSpec