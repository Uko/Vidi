action
add: anElement
	super add: anElement.
	anElement
		on: R3MouseClickDown
		do: [ self handleClickOnElement: anElement ].
		
	anElement class == VidiModelElement ifFalse: [ anElement addInteraction: (R3Popup new text: #infoText) ]