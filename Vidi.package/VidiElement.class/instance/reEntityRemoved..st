as yet unclassified
reEntityRemoved: ann

	ann affectedEntity = model ifTrue: [ 
		parent remove: self ]