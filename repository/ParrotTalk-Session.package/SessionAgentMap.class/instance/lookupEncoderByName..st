action
lookupEncoderByName: encoderName

	^ dataEncoders 
		detect: [ :cls | cls encoderName = encoderName ] 
		ifNone: [ Exception signal: (encoderName, ' not found') ].
