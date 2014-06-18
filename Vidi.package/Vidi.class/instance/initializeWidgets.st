as yet unclassified
initializeWidgets

	ruleCategories := self newList.
	ruleCategories
		beMultipleSelection;
		displayBlock: [ :rule | rule name ];
		autoDeselect: false;
		items: self rules.
		
	roassal := self instantiate: RoassalModel.
	roassal script: [ :view :canvas |
		view addAll: ((RTEllipse new color: [ :el |
			(self rulesByViolator at: el mirroredEntity ifAbsentPut: #()) size > 0
				ifTrue:  [ Color red ]
				ifFalse: [ Color gray ] ]) elementsOn: self packModel entities) @ RTDraggable .
		RTEdge 
			buildEdgesFromElements: view elements
			from: #yourself
			toAll: #descendents
			inView: view.
		"RTGridLayout on: view elements."
		RTClusterLayout  on: view elements edges: view edges.
		view @ RTZoomableView.
		view edges do: [ :e | e trachelShape pushBack ].
		view canvas camera focusOnCenterScaled: view canvas extent max ].
	
	vizButton := self newButton. 
	vizButton
		label: 'Vizualise';
		action: [ roassal refresh ]

    
   