private
cipherOnSecretBytes: secretBytes incoming: incoming mode: cryptMode

	| keyBytes cipher |
	keyBytes := (secretBytes size == keySize)
		ifTrue: [secretBytes]
		ifFalse: [keyBytes := secretBytes forceTo: keySize paddingWith: 16r98].
	cipher := cipherClass new.
	keySize ifNotNil: [[cipher keySize: keySize] on: Exception do: [:v|]].
	cipher := (cipher key: keyBytes) cbc.
	self hasIvParameter
		ifTrue: [cipher initialVector: (self computeIv: keyBytes incoming: incoming mode: cryptMode)].
	^ cipher