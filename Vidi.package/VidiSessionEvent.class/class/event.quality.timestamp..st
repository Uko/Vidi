instance creation
event: anEpMethodModification quality: anInteger timestamp: aDateAndTime 
	^ self new 
		initializeEvent: anEpMethodModification
		quality: anInteger
		timestamp: aDateAndTime;
		yourself