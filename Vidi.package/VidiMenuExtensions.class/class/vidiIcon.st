as yet unclassified
vidiIcon
	"Private - Generated method"
	^ icon ifNil: [ icon :=  Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self vidiIconContents readStream) ].