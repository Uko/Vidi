announcement handling
reEntityRemoved: ann

	ann affectedEntity = model ifTrue: [ 
		parent remove: self ]