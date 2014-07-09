event handling
handleMouseDownOnElement: el
	super handleMouseDownOnElement: el.
	self toggleSelection: el