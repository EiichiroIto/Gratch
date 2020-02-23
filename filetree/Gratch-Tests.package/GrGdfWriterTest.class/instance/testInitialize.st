test
testInitialize
	| w |
	w := self newWriter.
	self assert: w privStream isStream.
	self assert: w nodeColumns isArray.
	self assert: w edgeColumns isArray.