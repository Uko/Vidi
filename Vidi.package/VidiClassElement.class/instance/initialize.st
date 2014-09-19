accessing
initialize
	super initialize.
	padding := 0.5.
	layout := R3WallLayout new.
	layout gap: 0.05.
	shape width: 1.
	shape depth: 1.
	
	self subscribe