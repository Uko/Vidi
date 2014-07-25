as yet unclassified
add: anElement
	| oldBase |
	oldBase := (R3AABox onElements: descendents) extent xz.

	self silentAdd: anElement.
	self relayout.

	oldBase = (R3AABox onElements: descendents) extent xz
		ifFalse: [ self resize ]
	