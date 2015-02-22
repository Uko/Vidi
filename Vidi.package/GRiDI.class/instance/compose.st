as yet unclassified
compose
	self title: 'Glamour Renraku isual Design Inspector'.
	self act: [ :b | b update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Update'.
	self pager with: [ :browser | 
		browser fixedSizePanes: 2.
		browser show: [ :a :each |
			a title: [ each name ].
			a dynamic 
				display: [ :x | 
					(GLMCompositePresentation new with: [:d | 
						each 
							gridiPresentationsIn: d 
							inContext: self ])
							startOn: x ] ] ].