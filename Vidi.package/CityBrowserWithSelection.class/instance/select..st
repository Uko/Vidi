accessing
select: anElement
	
	self silentResetSelection.
	selected := anElement -> anElement shape color.
	anElement shape color: Color cyan.
	self selectionChanged cull: anElement