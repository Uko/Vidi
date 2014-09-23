as yet unclassified
initialize
	super initialize.
	startTime := DateAndTime now.
	events := OrderedCollection new. 
	packages := Set new.  
	                 
	EpMonitor current log announcer weak
		when: EpEntryAdded
		send: #epEntryAdded:
		to: self