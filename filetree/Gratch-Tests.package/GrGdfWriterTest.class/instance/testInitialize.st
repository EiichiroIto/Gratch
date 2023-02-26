test
testInitialize
	| w |
	w := self newWriter.
	self assert: w stream isStream.
	self assert: w nodeColumns isArray.
	self assert: w edgeColumns isArray.