initialization
initialize
	super initialize.
	startTime := DateAndTime now.
	events := OrderedCollection new. 
	packages := Set new.
	author := Author fullName.
	
	                 
	EpMonitor current log announcer weak
		when: EpEntryAdded
		send: #epEntryAdded:
		to: self