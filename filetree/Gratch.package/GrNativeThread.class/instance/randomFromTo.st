misc ops
randomFromTo
	| to from result |
	to := self pop.
	from := self pop.
	result := grWorld randomFrom: from to: to.
	self push: result.