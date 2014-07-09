activation
activate
	self installLogo.
	self setBrowserGroup.
	
	Smalltalk snapshot: true andQuit: true.