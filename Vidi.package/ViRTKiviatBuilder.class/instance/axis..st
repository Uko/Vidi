as yet unclassified
axis: aRTKiviatMetric
"creation of a metric axis"
	| config centralPoint allValues |
	kiviatMetrics add: aRTKiviatMetric.	
	
	allValues := (objects collect: [ :p | (aRTKiviatMetric named)  rtValue: p ]).	
	aRTKiviatMetric maxValue: ( allValues max max: 1).
	aRTKiviatMetric minValue: ( allValues min).
		
	config := RTAxisConfiguration new
					builder: self;
					numberOfTicks: 4;
					numberOfLabels: 4;
					minValue: 0;
					maxValue: aRTKiviatMetric maxValue;					
					labelConvertion: [ :number | number asFloat round: 2 ];
					positionLabel: [ :aLabel :aTick | aLabel translateTo: aTick position + (0 @ 15) ].
					(axisTitle = #activated) ifTrue: [ config title: (nameDict at: aRTKiviatMetric named) asString].
					
					
	centralPoint := (0@0).
	
	config axisFrom: 0@0 to: (aRTKiviatMetric modelBlock value: (self getNormalizedValue:(aRTKiviatMetric maxValue)  min:0  max:(aRTKiviatMetric maxSize)  minValue:(aRTKiviatMetric minValue) maxValue: (aRTKiviatMetric maxValue))).
	