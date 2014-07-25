accessing
resize
	| box |
	box := (R3AABox onElements: descendents).
	
	shape width: box width + (padding * 2).
	shape depth: box depth + (padding * 2).
	
	parent ifNotNilDo: #relayout