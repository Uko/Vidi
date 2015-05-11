gt
gtInspectorQualitylineIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 14>
	self events ifEmpty: [ ^ self ].
	
	composite roassal2
		title: 'Quality';
		painting: [ :view | 
			| lowestq earliest b ds |
			earliest := self events first timeStamp asSeconds.
			lowestq := (self events detectMin: #quality) quality.
			
			b := RTGrapher new.
			b view: view.
			"b extent: 700 @ 300."
			
			ds := RTDataSet new. 
			
			ds interaction popupText: [ :e |
				e class = Association
					ifTrue:[ e key changeTooltip ]
					ifFalse:[e changeTooltip]].
			ds dotShape ellipse 
				color: (Color black alpha: 0.1);
				size: [ :ev | ev changeValue sqrt + 5 ].
			ds points: self events.
			ds y: [ :ev | ev quality - lowestq + 1 ].
			ds x: [ :ev | ev timeStamp asSeconds - earliest ].
			ds connectColor: Color red.
			
			b add: ds.
			
			b axisX 
				labelRotation: -20;
				 labelConversion: [ :sec | 
					String streamContents: [ :s |
						self events first timeStamp + sec asSeconds printHMOn: s ] ].

			
			b axisY 
				 labelConversion: [ :qua | 
					(qua - 1 + lowestq) asInteger ].
			
			b build.
			
			view canvas camera focusOnCenterScaled.
			view @ RTHorizontalDraggableView. ] 