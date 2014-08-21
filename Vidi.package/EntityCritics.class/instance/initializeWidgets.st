initialization
initializeWidgets
	
	itemTitle := self newLabel.
	itemTitle emphasis: 1.
	
	critList := self newTree.
	critList
		displayBlock: [ :report | report title ];
		whenSelectedItemChanged: [ :item | item
			ifNil: [ self resetTextModel ]
			ifNotNil: [ self setTextModelForRule: item ] ];
		allowMenuOnNoItem: true;
		menu: [ :menu | menu
			addGroup: [:aGroup | aGroup
				addItem: [ :item | item
					name: 'Add note…' translated;
            		action: [ VidiEditAnnotationDialog new
						entity: entity;
						openDialogWithSpec ] ].
				
			critList selectedItem ifNotNilDo: [ :litem |
				aGroup
					addItem: [ :item | item
						name: 'Details' translated;
            			action: [ VidiReportDialog new
							report: litem content;
							openDialogWithSpec ] ];
					addItem: [ :item | item
						name: 'Remove report' translated;
            			action: [ litem content selfDestruct ] ] ] ] ].
		
	codePane := self newText.
	self initializeActionToPerformOnTextModel.
	
	browseButton := self newButton.
	browseButton
		icon: (Smalltalk ui icons iconNamed: #sourceSelectedIcon);
		action: [ entity ifNotNil: [ entity mirroredEntity browse ] ].
		
	RenrakuAnnouncer uniqueInstance weak
		when: RePortChanged
		send: #reportChanged:
		to: self;
		
		when: ReRuleVisiblityChanged
		send: #ruleVisibilityChanged:
		to: self;
		
		when: ReEntityUpdated
		send: #entityUpdated:
		to: self;
		
		when: ReEntityRemoved
		send: #entityRemoved:
		to: self;
		
		when: RePortAdded
		send: #reportChanged:
		to: self;
		
		when: RePortRemoved
		send: #reportRemoved:
		to: self