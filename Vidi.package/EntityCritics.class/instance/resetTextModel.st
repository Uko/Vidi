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
			codePane behavior: (mirroredEntity isClass | mirroredEntity isTrait 
				ifTrue: [ mirroredEntity ]
				ifFalse: [ mirroredEntity methodClass ]) ]