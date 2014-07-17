initialization
initializeCityBrowser

	cityBrowser colorBlock: [ :element |
		| max |
		max := (self model entities collect: #numberOfVisibleViolations) max.
		max isZero     
			ifTrue: [ Color lightGray ]
			ifFalse: [
				Color red lighter lighter 
					mixed: element model numberOfVisibleViolations / max
					with: Color lightGray ] ].

	cityBrowser infoTextBlock: [ :element | 
		element model infoText ].

	cityBrowser selectionChanged: [ :item | 
		item
			ifNil: [
				entityInspector clear ]
			ifNotNil: [
				entityInspector entity: item model  ] ]