gt
gtInspectorT2lineIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 15>
	|  |
	self events ifEmpty: [ ^ self ].
	
	composite roassal2
		title: 'T2';
		painting: [ :view | 
			|  earliest b |
			earliest := self events first timeStamp asSeconds.
			
			b := RTCharterBuilder new.
			b view: view.
			b extent: 700 @ 300.
			b interaction popupText: #changeTooltip.
			b points: self events.
			b allY: [ :ev | ev changeValue "sqrt" ].
			
			b shape color: (Color black alpha: 0.5).
			
			b stackX.
			"b allX: [ :ev | ev timeStamp asSeconds - earliest ]."
			b histogramBarWidth: 700 / self events size - 1.
			b axisConfiguration 
				labelRotation: -20;
				labelConvertion: [ :index | 
					String streamContents: [ :s |
						s nextPut: $(.
						index floor printOn: s.
						s nextPut: $); space.
						(self events at: (index isZero
							ifTrue: [ 1 ]
							ifFalse: [ index ]) ) timeStamp printHMOn: s ] ].
			b axisX.
			b resetAxisConfiguration.
			b axisY.
			
			view canvas camera focusOnCenterScaled.
			view @ RTHorizontalDraggableView. ]