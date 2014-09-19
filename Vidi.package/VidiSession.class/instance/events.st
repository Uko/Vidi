as yet unclassified
events
	| entries |

	entries := OrderedCollection new.

	EpMonitor current log
		priorEntriesFromHeadDo: [ :entry |
		(self interestedIn: entry ) ifTrue: [ 
				entries add: entry ] ].
		
	^ entries reversed.