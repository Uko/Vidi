initialization
initializeEditingGroup: aGroup

	aGroup
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
      			action: [ litem content selfDestruct ] ] ] 