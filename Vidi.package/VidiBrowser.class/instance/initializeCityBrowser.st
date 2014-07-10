initialization
initializeCityBrowser

	cityBrowser colorBlock: [ :element |
		self maxViolations
			ifNil: Color lightGray
			ifNotNilDo: [ :violations |
				Color red lighter lighter 
					mixed: (self rulesByViolator
						at: element model mirroredEntity
						ifAbsent: #()) size
						/
						violations size
					with: Color lightGray ] ].
			
	cityBrowser infoTextBlock: [ :element | 
			element model infoText ].
			
	cityBrowser selectionChanged: [ :item | 
		item
			ifNil: [ entityInspector clear ]
			ifNotNil: [
			entityInspector
				entity: item model mirroredEntity;
				critics: (
					self rulesFor: item model mirroredEntity) ] ]