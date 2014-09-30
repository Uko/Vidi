gt
gtInspectorEventsIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 20>
	self events ifEmpty: [ ^ self ].
	
	composite list 
		title: 'Events';
		display: [ self events ];
		format: [ :event | event event name ];
		tags: [ :each | {each event class name allButFirst: 2} ]