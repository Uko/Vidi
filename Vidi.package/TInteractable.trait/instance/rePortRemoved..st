as yet unclassified
rePortRemoved: ann

	self model = ann affectedEntity
		ifTrue: [ self morph ]

	