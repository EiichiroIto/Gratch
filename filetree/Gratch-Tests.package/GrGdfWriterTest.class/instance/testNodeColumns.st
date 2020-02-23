test
testNodeColumns
	| w |
	w := self newWriter.
	self assertCollection: w nodeColumns equals: w defaultNodeColumns.
	w nodeColumns: #(a b c).
	self assertCollection: w nodeColumns equals: #(a b c).