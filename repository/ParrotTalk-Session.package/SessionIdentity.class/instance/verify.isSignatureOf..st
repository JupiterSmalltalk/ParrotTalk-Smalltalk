signing
verify: signature isSignatureOf: byteArray

	^ publicKey verify: signature isSignatureOf: byteArray.
