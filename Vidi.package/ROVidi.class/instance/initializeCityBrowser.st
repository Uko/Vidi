as yet unclassified
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
		item ifNotNil: [ 
		EntityCritics new
			entity: item model mirroredEntity;
			critics: (self rulesByViolator
				at: item model mirroredEntity
				ifAbsent: #());
			openDialogWithSpec ] ]