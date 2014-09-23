accessing
selected: aBoolean

	selected = aBoolean ifTrue: [ ^ selected ].

	selected := aBoolean.
	
	selected
		ifTrue: [ 
			prevColor := self shape color.
			self shape color: Color cyan. ]
		ifFalse: [ 
			self shape color: prevColor.
			prevColor := nil ].
		
	^ selected