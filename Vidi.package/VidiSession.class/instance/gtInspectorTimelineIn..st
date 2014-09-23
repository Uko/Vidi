as yet unclassified
gtInspectorTimelineIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 15>
	| popup |
	popup := RTPopup text: [ :om |
		om content name, ' [',
		(om content class name allButFirst: 2), ']' ].
	composite roassal2
		title: 'Timeline';
		painting: [ :view | 
			| earliest |
			earliest := ((self events detectMin: [ :om | om tags at: #time ]) tags at: #time) asSeconds.
			
			
			view addAll: ((RTEllipse elementsOn: self events)
				@ popup;
				@ RTHighlightable;
				yourself).
			RTGlobalBuilder new
				view: view;
				
				normalizeX: [ :om | (om tags at: #time) asSeconds - earliest ]
				min: 0
				max: 500;
				
				minSize: 15;
				alphaColor: 0.7;
				execute.
				
			view add: ((RTLine new color: Color lightGray)
				edgeFrom: view elements leftMostElement
				to: view elements rightMostElement).
			view @ RTHorizontalDraggableView.
			view canvas focusOnCenterScaled ]