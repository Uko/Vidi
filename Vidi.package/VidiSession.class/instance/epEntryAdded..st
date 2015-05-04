announcement handling
epEntryAdded: anEpEntryAdded
	
	(self interestedIn: anEpEntryAdded entry)
		ifFalse: [ ^ self ].
	
	events add: (VidiSessionEvent
		event: anEpEntryAdded entry content
		quality: model numberOfViolations
		timestamp: (anEpEntryAdded entry tags at: #time))