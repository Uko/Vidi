protocol
resetTextModel

	codePane resetSelection.
	codePane aboutToStyle: true.
	entity
		ifNil: [ codePane text: '' ]
		ifNotNil: [  
			codePane text: entity definition.
			codePane behavior: (entity isClass
				ifTrue: [ entity ]
				ifFalse: [entity methodClass])]