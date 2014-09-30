announcer handling
rePortRemoved: ann

	self model = ann affectedEntity
		ifTrue: [ self morph ]

	