visualization
packagesModel
	"packagesModel ifNotNil: [ ^ packagesModel ]."
	^ packagesModel := self target packages collect: [ :pack |
		VPackage newFrom: pack inEnvironment: self target ]