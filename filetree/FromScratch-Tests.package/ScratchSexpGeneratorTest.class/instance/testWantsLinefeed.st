test
testWantsLinefeed

	| gen |
	gen := self newGenerator.
	self deny: gen wantsLinefeed.
	gen wantsLinefeed: true.
	self assert: gen wantsLinefeed.
	gen wantsLinefeed: false.
	self deny: gen wantsLinefeed