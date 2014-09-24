announcer handling
reportRemoved: ann 

	ann affectedEntity = entity ifTrue: [ 
		self resetCritList ]