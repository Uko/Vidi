as yet unclassified
initialize
	super initialize.
	hasChildren := false asValueHolder.
	
	self whenSelectedChanged: [ :bool |
		self content hiden: bool not ]