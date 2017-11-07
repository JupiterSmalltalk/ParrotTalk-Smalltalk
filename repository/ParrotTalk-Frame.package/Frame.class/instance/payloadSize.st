base access
payloadSize

	^ payload ifNil: [0] ifNotNil: [payload size]