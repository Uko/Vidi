initialization
initializeCityBrowser

	cityBrowser
		elementSelectedBlock: [ :element |
			entityInspector entity: element model ];
		selectionRemovedBlock: [ 
			entityInspector clear ]
	 