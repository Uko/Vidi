accessing
packagesModel
	^ packagesModel ifNil: [ packagesModel := VidiModel new ].
	