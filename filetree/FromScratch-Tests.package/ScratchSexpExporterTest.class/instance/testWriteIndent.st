test
testWriteIndent
	| ex |
	ex := self newExporter.
	ex privStream: '' writeStream.
	ex writeIndent.
	self assert: ex stream contents equals: String lf, '   '