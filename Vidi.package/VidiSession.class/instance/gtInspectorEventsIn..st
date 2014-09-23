as yet unclassified
gtInspectorEventsIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 20>
	composite list 
		title: 'Events';
		display: [ self events ];
		format: [ :event | event event name ];
		tags: [ :each | {each event class name allButFirst: 2} ]