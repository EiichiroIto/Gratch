test
testIsReporterBlock

	| obj |
	obj := self newObj.
	self deny: obj isReporterBlock.
	obj type: #isBooleanReporter.
	self assert: obj isReporterBlock.
	obj type: #isReporterBlock.
	self assert: obj isReporterBlock