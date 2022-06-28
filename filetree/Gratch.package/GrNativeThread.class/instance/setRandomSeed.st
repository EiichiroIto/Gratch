basic ops
setRandomSeed
	| num |
	num := self pop.
	grWorld setRandomSeed: num asInteger