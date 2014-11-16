gt
gtInspectorActionOpenVidi
	<gtInspectorAction>
	^ GLMGenericAction new
		action: [ self openVidi ];
		icon: VidiMenuExtensions vidiIcon;
		condition: [ self active ];
		title: 'Open Vidi';
		yourself