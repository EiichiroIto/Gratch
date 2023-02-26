test
testWriteHeader
	| ex proj |
	proj := self newProject.
	ex := self newExporter.
	ex privStream: '' writeStream.
	ex writeHeader: proj.
	self assert: ex stream contents equals: '(abc ()', String lf, ' ('