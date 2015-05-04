initialization
initializePackages: aCollection
	self initialize.
	packages := aCollection asSet.
	model := ReModel withAllLintRulesForPackages: packages.
	
	startTime := DateAndTime now.
	events := OrderedCollection new. 
	author := Author fullName.
	
	EpMonitor current enable.     
	EpMonitor current log announcer weak
		when: EpEntryAdded
		send: #epEntryAdded:
		to: self