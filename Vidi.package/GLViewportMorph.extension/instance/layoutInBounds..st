*vidi
layoutInBounds: cellBounds

	super layoutInBounds: cellBounds.

	useOwnForm == true 
		ifTrue: [ form := Form extent: self extent depth: -32 ].
			
	display ifNotNil: [
		(self extent x isZero not and: [ self extent y isZero not	]) ifTrue: [
				display changeViewportSize: self extent ] ].