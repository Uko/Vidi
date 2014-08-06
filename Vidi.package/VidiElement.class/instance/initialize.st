as yet unclassified
initialize
	super initialize.
	self shape: R3CubeShape new.
	selected := false.
	
	RenrakuAnnouncer uniqueInstance weak
		on: ReEntityRemoved send: #reEntityRemoved: to: self