basic ops
kill
	| tid bid |
	tid := self pop.
	bid := self pop.
	grWorld kill: tid breed: bid.
	(breedId = bid and: [ id = tid ])
		ifTrue: [ self stop ]