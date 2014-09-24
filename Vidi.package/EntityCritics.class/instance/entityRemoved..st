announcer handling
entityRemoved: ann 

	ann affectedEntity = entity ifTrue: [ 
		self clear ]