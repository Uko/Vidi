protocol
resetTextModel

	codePane resetSelection.
	codePane aboutToStyle: true.
	entity
		ifNil: [ codePane text: '' ]
		ifNotNil: [  
			| mirroredEntity |
			mirroredEntity := entity mirroredEntity.
			codePane text: mirroredEntity definition.
			codePane behavior: (mirroredEntity isClass
				ifTrue: [ mirroredEntity ]
				ifFalse: [ mirroredEntity methodClass ]) ]