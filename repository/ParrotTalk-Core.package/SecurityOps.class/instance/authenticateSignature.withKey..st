action
authenticateSignature: signature withKey: key
		
	| byteArray |
	byteArray := (remoteMessagesToSign
		inject: (WriteStream on: ByteArray new)
		into: [:stream :msg | stream nextPutAll: msg. stream]) contents.
	^ key verify: signature isSignatureOf: byteArray