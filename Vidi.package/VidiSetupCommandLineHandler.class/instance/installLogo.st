utilities
installLogo	
	| file morph |
	file := ZnClient new
		systemPolicy;
		accept: ZnMimeType imagePng;
		get: 'https://raw.githubusercontent.com/Uko/Vidi/master/media/logo_small.png'.
	morph := ImageMorph fromStream: file readStream binary.
	PolymorphSystemSettings setDesktopLogoWith: morph