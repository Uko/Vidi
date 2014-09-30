announcer handling
rePortAdded: ann

	self model = ann affectedReport entity
		ifTrue: [ self morph ]

	