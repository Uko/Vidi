*vidi
setSuperProtocolFor: aMethod

<autoFix: 'Set protocol from superclass'>

(aMethod methodClass superclass lookupSelector:
	aMethod selector) ifNotNilDo: [ :superMethod |
		aMethod protocol: superMethod protocol ]