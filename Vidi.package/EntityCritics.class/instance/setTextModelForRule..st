private
setTextModelForRule: aRule

	(aRule result selectionIntervalFor: entity definition)
		ifNil: [ codePane resetSelection ]
		ifNotNilDo: [ :interval |
			 codePane setSelection: interval ].