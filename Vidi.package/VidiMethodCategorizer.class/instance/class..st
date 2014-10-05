accessing
class: aClass

	class := aClass.
	self title: aClass name.
	protocols items: aClass protocols.
	protocols setIndex: 1
	"methods items: aClass selectors"