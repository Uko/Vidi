gt
gtInspectorActionStopSession
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ self stop ];
		icon: (Smalltalk ui icons iconNamed: #stopIcon);
		condition: [ self active ];
		title: 'Stop session'