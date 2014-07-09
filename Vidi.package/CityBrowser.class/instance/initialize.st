initialization
initialize
	super initialize.
	colorBlock := [ :item | Color gray ].
	infoTextBlock := [ :item | item model name ].
	mouseDownOnElement := [ :item |  ].
	mouseDownOnView := [ :item |  ].
