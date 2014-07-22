announcer handling
entityUpdated: ann 

	ann affectedEntity = entity ifTrue: [ 
		self resetTextModel ]