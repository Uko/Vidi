private
setTextModelForRule: aRule

	aRule selection
		ifNil: [ codePane resetSelection ]
		ifNotNil: [ codePane setSelection: aRule selection ]