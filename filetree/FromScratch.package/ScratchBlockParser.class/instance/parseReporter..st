accessing
parseReporter: aMorph
	| str |
	str := self reporterArgString: aMorph.
	generator generateReporter: str