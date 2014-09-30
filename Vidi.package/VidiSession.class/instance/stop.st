actions
stop
	self active ifFalse: [
		self complain.
		^ false ].
	
	(self confirm: 'Do you really want to stop session? (this action can''t be undone)')
		ifFalse: [ ^ false ].
		
	endTime := DateAndTime now.
	model := nil.
	EpMonitor current log announcer unsubscribe: self.
	^ true