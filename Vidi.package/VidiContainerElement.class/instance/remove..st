removing
remove: anElement
	| oldBase |
	oldBase := (R3AABox onElements: descendents) extent xz.

	self silentRemove: anElement.
	self relayout.
	
	oldBase = (R3AABox onElements: descendents) extent xz
		ifFalse: [ self resize ]
	