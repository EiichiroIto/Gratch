test
testScreenshooting

	| morph |
	morph := self newMorph.
	self deny: morph screenshooting.
	morph screenshooting: true.
	self assert: morph screenshooting.
	morph screenshooting: false.
	self deny: morph screenshooting