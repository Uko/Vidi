as yet unclassified
stop
	self active ifFalse: [ ^ self complain ].
	(self confirm: 'Do you really want to stop session? (this action can''t be undone)')
		ifTrue: [ 
			endTime := DateAndTime now.
			model := nil.
			EpMonitor current log announcer unsubscribe: self ]