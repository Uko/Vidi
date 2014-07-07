accessing
initializeActionToPerformOnTextModel

	codePane acceptBlock:  [ :text | 	
		entity ifNotNil: [  
			entity isCompiledMethod
				ifTrue: [ entity methodClass compile: text ] 
				ifFalse: [ Smalltalk evaluate: text ] ] ]
	