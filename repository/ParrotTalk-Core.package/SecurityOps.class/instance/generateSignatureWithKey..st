action
generateSignatureWithKey: key

	| byteArray |
	byteArray := (localMessagesToSign
		inject: (WriteStream on: ByteArray new)
		into: [:stream :msg | stream nextPutAll: msg. stream]) contents.
	^ key signMessage: byteArray.
