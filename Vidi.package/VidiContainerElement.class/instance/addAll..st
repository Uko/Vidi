adding
addAll: aCollection
	| oldBase |
	oldBase := (R3AABox onElements: descendents) extent xz.

	aCollection do: [ :e |
		self silentAdd: e ].
	self relayout.
	
	oldBase = (R3AABox onElements: descendents) extent xz
		ifFalse: [ self resize ]
	