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
			| text |
			text := element model name.
			self rulesByViolator
				at: element model mirroredEntity
				ifPresent: [ :crit |
					text,
					' | ',
					crit size printString,
					(' violation' asPluralBasedOn: crit) ]
				ifAbsent: [ text ] ].
			
	cityBrowser selectionChanged: [ :item | 
		item
			ifNil: [ entityInspector clear ]
			ifNotNil: [
			entityInspector
				entity: item model mirroredEntity;
				critics: (
					self rulesFor: item model mirroredEntity) ] ]