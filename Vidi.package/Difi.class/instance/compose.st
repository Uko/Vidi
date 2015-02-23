as yet unclassified
compose
	self title: 'Diff view'.
	self act: [ :b | b update] icon: GLMUIThemeExtraIcons glamorousRefresh entitled: 'Update'.
	self tabulator with: [ :browser |
		browser 
			column: #viz;
			column: #diff.
			
		browser transmit
			to: #viz;
			andShow: [ :a | self vizIn: a ].
			
		browser transmit
			from: #viz;
			to: #diff;
			andShow: [ :a | self diffIn: a ] ]