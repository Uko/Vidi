initialization
initializeFixingGroup: aGroup

	critList selectedItem ifNotNilDo: [ :litem |
		litem content actions do: [ :pragma |
			aGroup addItem: [ :item | item
				name: (pragma argumentAt: 1);
         		action: [ litem content rule lintRule
					withArgs: { self entity mirroredEntity }
					executeMethod: pragma method ] ] ] ].
