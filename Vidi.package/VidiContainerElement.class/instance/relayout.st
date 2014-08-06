accessing
relayout
	| oldBase |
	descendents ifEmpty: [ ^ self resize ].

	oldBase := (R3AABox onElements: descendents) extent xz.

	self applyLayout.
	R3Move placeElements: descendents onTopOf: self boundingBox topCenter.
	
	(oldBase closeTo: (R3AABox onElements: descendents) extent xz)
		ifFalse: [ self resize ]