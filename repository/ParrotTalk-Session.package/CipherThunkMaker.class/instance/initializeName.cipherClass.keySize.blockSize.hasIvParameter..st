initialize-release
initializeName: short cipherClass: ciphClass keySize: kSize blockSize: bSize hasIvParameter: hasIV

	protocolName := short.
	keySize := kSize ifNil: [ciphClass keySize].
	cipherClass := ciphClass.
	blockSize := bSize.
	hasIvParameter := hasIV.
	