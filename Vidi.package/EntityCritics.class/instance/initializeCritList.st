initialization
initializeCritList

	critList
		displayBlock: [ :report | report title ];
		whenSelectedItemChanged: [ :item | item
			ifNil: [ self resetTextModel ]
			ifNotNil: [ self setTextModelForRule: item ] ];
		allowMenuOnNoItem: true;
		menu: [ :menu | menu
			addGroup: [:aGroup |
				self initializeEditingGroup: aGroup ];
			addGroup: [:aGroup |
				self  initializeFixingGroup: aGroup ] ].