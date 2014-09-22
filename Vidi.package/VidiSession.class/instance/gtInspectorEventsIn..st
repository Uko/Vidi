as yet unclassified
gtInspectorEventsIn: composite
	"This provides a list of all events"
	<gtInspectorPresentationOrder: 20>
	composite list 
		title: 'Events';
		display: [ self events ];
		format: [ :entry | entry content name ];
		tags: [ :each | {each content class name allButFirst: 2} ]