initialization
initializeActionToPerformOnTextModel

	codePane acceptBlock:  [ :text | 	
		entity ifNotNil: [  
			entity mirroredEntity isCompiledMethod
				ifTrue: [ entity mirroredEntity methodClass compile: text ] 
				ifFalse: [ Smalltalk evaluate: text ] ] ]
	