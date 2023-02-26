test
testWriteScriptSeparator
	| ex |
	ex := self newExporter.
	ex privStream: '' writeStream.
	ex writeScriptSeparator.
	self assert: ex stream contents equals: String lf, '  '